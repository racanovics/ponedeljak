

/********************************************************************
 * File    :       UDP_server.c
 *
 * Overview:       A simple UDP server to communicate
 *                 with PC
 *
 * Auteur               Date         Commentaire      E-Mail
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Théou Jean-Baptiste  10/05/11     Initial version  jbtheou@gmail.com
 *******************************************************************/

#include "main.h"



// Defines which port the server will listen on
#define SERVER_PORT	9760
extern NODE_INFO remoteNode;

/*****************************************************************************
  Function:
	void UDPServer_request(void)
  Summary:
	Implements a simple UDP Server.

  Description:


  Precondition:
	UDP is initialized.

  Parameters:
	None

  Returns:
  	None
  ***************************************************************************/

void UDPServer_request(void)
{
        static DWORD t = 0;

	static enum {
		UDP_REQUEST_HOME = 0,
		UDP_REQUEST_LISTEN,
		UDP_REQUEST_RECEIVED
	} UDPRequestSM = UDP_REQUEST_HOME;

        char buffer[4];

        static UDP_SOCKET	MySocket;
        BYTE                    i[MAX_COMMAND_SIZE];
        BYTE                    size;
        BYTE *                  command;
	switch(UDPRequestSM)
	{
            case UDP_REQUEST_HOME :
			// Open a UDP socket for inbound and outbound transmission
			// Since we expect to only receive broadcast packets and
			// only send unicast packets directly to the node we last
			// received from, the remote NodeInfo parameter can be anything
			MySocket = UDPOpen(SERVER_PORT, NULL, SERVER_PORT);

			if(MySocket == INVALID_UDP_SOCKET)
				return;
			else
				UDPRequestSM++;
			break;

		case UDP_REQUEST_LISTEN :
                        if(TickGet() - t >= TICK_SECOND/2ul)
                        {
                            t = TickGet();
                            //mPORTDToggleBits(BIT_2);
                        }
			// Do nothing if no data is waiting
			if(!UDPIsGetReady(MySocket))
				return;

			// Receive the command
			size = UDPGetArray((BYTE *)i,MAX_COMMAND_SIZE);
                        command = (BYTE *)malloc(size*sizeof(BYTE));
                        strncpy(command,i,size);
                        putsUART1(command);

                        xSemaphoreTake(xSemaphoreTX,10000);
                        UDPDiscard();
			// We received a discovery request, reply when we can
			UDPRequestSM++;
                        //break;
			// Change the destination to the unicast address of the last received packet
                        memcpy((void*)&UDPSocketInfo[MySocket].remoteNode, (const void*)&remoteNode, sizeof(remoteNode));

			// No break needed.

		case UDP_REQUEST_RECEIVED:
			if(!UDPIsPutReady(MySocket))
				return;
                        xSemaphoreTake(xSemaphoreTX,5000);
                        {
                            sprintf(buffer,"%d",count);
                            UDPPutArray((BYTE *)buffer,4);
                            UDPFlush();
                            while(!UDPIsPutReady(MySocket));
                            // We need to split the data, because of UDP packet size limit
                            Large_UDP_Packet(count,MySocket);
                        }
                        xSemaphoreGive(xSemaphoreTX);
			UDPRequestSM = UDP_REQUEST_LISTEN;
                        EnableIntU1RX;
                        break;

	}
}

void Large_UDP_Packet(int value, UDP_SOCKET MySocket)
{
    int number_packet =0;
    int final_length  =0;
    int ind;
    int cnt=0;
    int j=0;

    // We testing if buffer need to be split
    if(value >= UDP_LIMIT_SIZE)
    {
        // The number of packet who need to send
        number_packet = (int)value/UDP_LIMIT_SIZE;
        // The length of the last packet
        final_length  = value%UDP_LIMIT_SIZE;
        // We send the first packet
        UDPPutArray((BYTE *)rxbuffer,UDP_LIMIT_SIZE);
        UDPFlush();
        /* Testing if we need to send more than two packets
         * (One of UDP_LIMIT_SIZE and an other to final_length)
         */
        if(number_packet > 1)
        {
            for(cnt=1;cnt<number_packet;cnt++)
            {
                /* Here, we moving data inside the bufffer
                 * to not use an other buffer (save space), and sending
                 * the data, until we need to send the last packet
                 */
                for(j=0;j<UDP_LIMIT_SIZE;j++)
                {
                    rxbuffer[j] = rxbuffer[cnt*UDP_LIMIT_SIZE+j];
                }
                // We waiting for hardware buffer
                while(!UDPIsPutReady(MySocket));
                UDPPutArray((BYTE *)rxbuffer,UDP_LIMIT_SIZE);
                UDPFlush();
            }
            // We sending the last packet
            for(ind=0;ind<final_length;ind++)
            {
                rxbuffer[ind] = rxbuffer[cnt*UDP_LIMIT_SIZE+j+1+ind];
            }
            while(!UDPIsPutReady(MySocket));
            UDPPutArray((BYTE *)rxbuffer,final_length);
            UDPFlush();
        }
        else
        {
            for(ind=0;ind<final_length;ind++)
            {
                rxbuffer[ind] = rxbuffer[UDP_LIMIT_SIZE+ind];
            }
            while(!UDPIsPutReady(MySocket));
            UDPPutArray((BYTE *)rxbuffer,final_length);
            UDPFlush();
        }
    }
    else
    {
        UDPPutArray((BYTE *)rxbuffer,value);
        UDPFlush();
    }
}