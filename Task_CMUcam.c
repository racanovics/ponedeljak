/*********************************************************************
 * FileName:        Task_CMUcam.c
 * Dependencies:    main.h
 * Processor:       PIC32MX795F512L
 * Compiler:        Microchip C32 v1.11A or higher
 *
 * Overview: Code de la tâche pour la communication avec la CMUcam
 * (communication via l'UART)
 ********************************************************************/

#include "main.h"

/********************************************************************
 * Tache:        void TaskCMUcam(void *pvParameters)
 *
 * Overview:     Tache responsable de la communication avec la CMUcam
 * 		 même 115200 Baud/s le temps de traitement de cette tâche est long
 * 		 d'ou sa priorité (faible)
 *
 * Auteur               Date         Commentaire
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Théou Jean-Baptiste  15 sep 2011 Première version
 *******************************************************************/
void TaskCMUcam(void *pvParameters)
{
    
    while(1)
        {
        // Receive data from UART
        xQueueReceive(xQueueCMUcam,&rx,portMAX_DELAY);
        // Switch in UART state machine
        switch(UARTSM)
        {
            case UART_FIRST_CHAR :
                count = 0;
                /* We test if is a beginning of a frame or wrong frame
                 * (print_ACK or print_NCK in CMUcam)
                */
                switch(rx)
                {
                    case 'A' : INIT_DETEC++;
                               break;
                    case 'N' : BAD_DETEC++;
                               break;
                    case 'C' : INIT_DETEC++;
                               BAD_DETEC++;
                               break;
                    case 'K' : INIT_DETEC++;
                               BAD_DETEC++;
                               break;
                    default  : INIT_DETEC=A;
                               BAD_DETEC=N;
                               break;
                }

                // If it's a new frame,
                if(INIT_DETEC == INIT)
                {
                    INIT_DETEC = A;
                    BAD_DETEC = N;
                    UARTSM = UART_FILL_BUFFER;
                    rxbuffer[0] = 'A';
                    rxbuffer[1] = 'C';
                    rxbuffer[2] = 'K';
                    count=3;
                }
                else if(BAD_DETEC == BAD)
                {
                    rxbuffer[0] = 'N';
                    rxbuffer[1] = 'C';
                    rxbuffer[2] = 'K';
                    count=3;
                    INIT_DETEC = A;
                    BAD_DETEC = N;
                    UARTSM = UART_FIRST_CHAR;
                    // On désactive l'interruption en RX de l'UART
                    DisableIntU1RX;
                    // We release the semaphore for UDP send
                    xSemaphoreGive(xSemaphoreCMUcamTransmissionEnable);
                }
                break;

            case UART_FILL_BUFFER :
                // We test if is a end of a frame (print(@FIN) in CMUcam)
                switch(rx)
                {
                    case '@' : FIN_DETEC++;
                               break;
                    case 'F' : FIN_DETEC++;
                               break;
                    case 'I' : FIN_DETEC++;
                               break;
                    case 'N' : FIN_DETEC++;
                               break;
                    default  : FIN_DETEC=TEST;
                               break;
                }
                if( (count >= RX_MAX) || FIN_DETEC == END)
                {
                    // We remove the last 3 char (@FI)
                    if(FIN_DETEC == END)
                        count = count - 3;
                    // We re init the FIN detector
                    FIN_DETEC = TEST;
                    // We re init the UART state machine
                    UARTSM = UART_FIRST_CHAR;
                    /* We disable the interruption from UART until all UDP packet was send
                     * We enable the interruption in UDP_server part
                    */
                    DisableIntU1RX;
                    // We release the semaphore for UDP send
                    xSemaphoreGive(xSemaphoreCMUcamTransmissionEnable);
                    break;
                }
                rxbuffer[count]=rx;
                count++;
                break;
        }
    }


}
