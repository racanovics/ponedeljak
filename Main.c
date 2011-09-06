/*********************************************************************
 *  Main Application Entry Point 
 *********************************************************************
 * FileName:        Main.c
 * Dependencies:    main.h
 * Processor:       PIC32MX795F512L
 * Compiler:        Microchip C32 v1.11A or higher
 *
 * Overview: Fichier principal du projet contenant le main, les ISR et les gestions des
 * exceptions (PIC32 Core) et des d�bordement de piles (freeRTOS kernel). 
 ********************************************************************/

/* Bits de configuration pour un PIC32MX795F512L (Core config) */
#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FWDTEN = OFF, FPBDIV = DIV_1, POSCMOD = XT, FNOSC = PRIPLL, CP = OFF

/* Header Dependencies */
#include "main.h"


/* Appel wrapper afin d'assurer les commutations de context de FreeRTOS (isr_wrapper.S) */
/* WRAPPER FreeRTOS : debut de sauvegarde dans la stack de la t�che interrompue		  	*/
/* la fin se fait toujours dans le tableau xISRStack[ configISR_STACK_SIZE ] (port.c)	*/
/* Il s'agit d'une sorte de Tas ou se font les sauvegardes de contexte de FreeRTOS		*/
void __ISR(_TIMER_3_VECTOR, ipl3) IntTimer3Wrapper(void);
/*********************************************************************
 * ISR (TIMER 3) :   void __ISR(_TIMER_3_VECTOR, ipl2) Timer3Handler(void)
 *
 *
 * Note:  Routine d'interruption appel�e toutes les 500us et devant assurer
 * les acquisitions de trois grandeurs de mesures (position servomoteur , courant 
 * du moteur pour la propulsion et niveau alimentation de la batterie c�t� MCU). 
 * 500us est � la fois la fr�quence d'�chantillonnages des 
 * diff�rentes grandeurs converties ainsi que la fr�quence de d�coupage utilis�e par les 
 * diff�rents convertiiseurs statiques. Une fois les acquisition faites, elles 
 * sont post�es par � la t�che d�di�e au contr�le/commande/supervision
 * de l'application (Task_control.c) 
 ********************************************************************/
void IntTimer3Handler(void){
portBASE_TYPE xYieldRequired = pdFALSE; // Test pour l'appel du scheduler
volatile struct_mesures acquiData;      // Mesures post�es � la t�ches d'asservissement

	/* RAZ IRQ Flag du Timer 3 */
	INTClearFlag(INT_T3);

	/* Mesure POSITION (solution n�1) : Acquisition automatique apr�s fin de conversion, mode scan sur broche AN6, AN10 et AN11 */
	/* valeurs converties stock�es respectivement dans ADC_BUF0 (alim.), ADC_BUF1 (position) et ADC_BUF2 (courant)   */
	acquiData.sDirMeasure = (short) ReadADC10(1);  

	/* Mesure COURANT */
	acquiData.sCurrentMeasure = (short) ReadADC10(2);  

	/* Mesure NIVEAU ALIMENTATION */
	acquiData.sBattMeasure = (short) ReadADC10(0); 

	/* Post pour la t�che de contr�le/commande/supervision  (Task_control.c)  */
	xQueueSendFromISR( xQueueAcquiData, (void *) &acquiData, &xYieldRequired);

        /* Appel au scheduler en cas de besoin */
        portEND_SWITCHING_ISR( xYieldRequired );

	/* DEBUG : code pour le debug  */
	#if DEBUG_IS_ON
		PORTToggleBits(BROCHE_DEBUG); 		// clignotement d'une LED
	#endif
}


/* Appel wrapper afin d'assurer les commutations de context de FreeRTOS (isr_wrapper.S) */
void __ISR(_UART_3A_VECTOR,ipl1) IntUart3AWrapper(void);
/*********************************************************************
 * ISR (UART 3A) :   void __ISR(_UART_3A_VECTOR,ipl2) IntUart3AWrapper(void)
 *
 *
 * Note:  Routine d'interruption interfa�ant l'UART 3A en r�ception du PIC32 avec le 
 * PC. Cette ISR n'est utilis�e que pour du debug.
 ********************************************************************/
void IntUart3AHandler(void){
volatile char data;

	if (UARTReceivedDataIsAvailable(UART3A)){

		/* Lecture data et RAZ IRQ Flag de l'UART3A (c�t� UART avant c�t� CPU) */
		data = UARTGetDataByte(UART3A);
	
		/* RAZ IRQ Flag de l'UART3A (c�t� CPU) */
		INTClearFlag(INT_U3ARX);


		/* DEBUG : code pour le debug  */
		#if DEBUG_IS_ON	
			/* modification de la commande de direction */
			if(data == 'a'){
				ConsDir += 10;
			}
			else if (data == 'z'){
				ConsDir -= 10;
			}
		#endif
	}
}


/*********************************************************************
 * Function :   void _general_exception_handler(unsigned cause, unsigned status)
 *
 *@param cause	entier repr�sentatif de la cause de l'exception (non g�r�)
 *
 *@param status	(non g�r�)
 *
 * Note:  fonction appel�e si une exception arrive au niveau du CPU du
 * PIC32 (adress error, bus error, arithmetic overflow ...)
 ********************************************************************/
void _general_exception_handler(unsigned cause, unsigned status){

	for( ;; ){
		UARTputs("SYSTEM ERROR : MCU exception !\r");
	}
}


/*********************************************************************
 * Function :   void vApplicationStackOverflowHook( xTaskHandle *pxTask, signed portCHAR *pcTaskName )
 *
 *@param pxTask	Handle (pointeur) sur la t�che ayant subit le d�bordement. Technique de r�f�rencement des t�ches 
 * 				sous FreeRTOS
 *
 *@param pcTaskID	pointeur sur l'identifiant (string - configMAX_TASK_NAME_LEN) de la t�che d�finie dans la TCB
 *
 * Note:  fonction appel�e si un d�bordement de pile associ�e � une t�che arrive
 * durant l'application
 ********************************************************************/
void vApplicationStackOverflowHook( xTaskHandle *pxTask, signed portCHAR *pcTaskID ){

	for( ;; ){
		UARTputs("SYSTEM ERROR : FreeRTOS Stack Overflow with Task ---->>>  \r");
		UARTputs(pcTaskID);
		UARTputs("  !\r");
	}
}



/*********************************************************************
 *********************************************************************
 *
 * MAIN Function :   Main application entry point.
 *
  *********************************************************************
 ********************************************************************/
int main(void){

	/* Configurations Pile et contr�leur R�seau */
	NetworkInit(); 		// ATTENTION : d�masque les IT (Besoin d'un Timer durant la phase d'initialisation !)

	/* Configurations p�riph�riques internes */
	HardwareInit();	

	/* Configurations variables application */
	SoftwareInit();		

	/* Configurations Real Time Operating System */		
	RTOSInit();

        /* D�marrage mode multi-t�che */
#if DEBUG_IS_ON
        UARTputs("\r\n\n*** Starting WI-FI Car Application ***");
	UARTputs("\r\n*** IP Address :    ");
	UARTputsIP();
	UARTputs("    ***\r\n\n");
#endif
	vTaskStartScheduler();

	/* Si on revient ici ... gros soucis ! */
	while (1){
            UARTputs("SYSTEM ERROR : return to main !\r");
        }
}
