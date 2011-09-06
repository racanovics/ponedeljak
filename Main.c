/*********************************************************************
 *  Main Application Entry Point 
 *********************************************************************
 * FileName:        Main.c
 * Dependencies:    main.h
 * Processor:       PIC32MX795F512L
 * Compiler:        Microchip C32 v1.11A or higher
 *
 * Overview: Fichier principal du projet contenant le main, les ISR et les gestions des
 * exceptions (PIC32 Core) et des débordement de piles (freeRTOS kernel). 
 ********************************************************************/

/* Bits de configuration pour un PIC32MX795F512L (Core config) */
#pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FWDTEN = OFF, FPBDIV = DIV_1, POSCMOD = XT, FNOSC = PRIPLL, CP = OFF

/* Header Dependencies */
#include "main.h"


/* Appel wrapper afin d'assurer les commutations de context de FreeRTOS (isr_wrapper.S) */
/* WRAPPER FreeRTOS : debut de sauvegarde dans la stack de la tâche interrompue		  	*/
/* la fin se fait toujours dans le tableau xISRStack[ configISR_STACK_SIZE ] (port.c)	*/
/* Il s'agit d'une sorte de Tas ou se font les sauvegardes de contexte de FreeRTOS		*/
void __ISR(_TIMER_3_VECTOR, ipl3) IntTimer3Wrapper(void);
/*********************************************************************
 * ISR (TIMER 3) :   void __ISR(_TIMER_3_VECTOR, ipl2) Timer3Handler(void)
 *
 *
 * Note:  Routine d'interruption appelée toutes les 500us et devant assurer
 * les acquisitions de trois grandeurs de mesures (position servomoteur , courant 
 * du moteur pour la propulsion et niveau alimentation de la batterie côté MCU). 
 * 500us est à la fois la fréquence d'échantillonnages des 
 * différentes grandeurs converties ainsi que la fréquence de découpage utilisée par les 
 * différents convertiiseurs statiques. Une fois les acquisition faites, elles 
 * sont postées par à la tâche dédiée au contrôle/commande/supervision
 * de l'application (Task_control.c) 
 ********************************************************************/
void IntTimer3Handler(void){
portBASE_TYPE xYieldRequired = pdFALSE; // Test pour l'appel du scheduler
volatile struct_mesures acquiData;      // Mesures postées à la tâches d'asservissement

	/* RAZ IRQ Flag du Timer 3 */
	INTClearFlag(INT_T3);

	/* Mesure POSITION (solution n°1) : Acquisition automatique après fin de conversion, mode scan sur broche AN6, AN10 et AN11 */
	/* valeurs converties stockées respectivement dans ADC_BUF0 (alim.), ADC_BUF1 (position) et ADC_BUF2 (courant)   */
	acquiData.sDirMeasure = (short) ReadADC10(1);  

	/* Mesure COURANT */
	acquiData.sCurrentMeasure = (short) ReadADC10(2);  

	/* Mesure NIVEAU ALIMENTATION */
	acquiData.sBattMeasure = (short) ReadADC10(0); 

	/* Post pour la tâche de contrôle/commande/supervision  (Task_control.c)  */
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
 * Note:  Routine d'interruption interfaçant l'UART 3A en réception du PIC32 avec le 
 * PC. Cette ISR n'est utilisée que pour du debug.
 ********************************************************************/
void IntUart3AHandler(void){
volatile char data;

	if (UARTReceivedDataIsAvailable(UART3A)){

		/* Lecture data et RAZ IRQ Flag de l'UART3A (côté UART avant côté CPU) */
		data = UARTGetDataByte(UART3A);
	
		/* RAZ IRQ Flag de l'UART3A (côté CPU) */
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
 *@param cause	entier représentatif de la cause de l'exception (non géré)
 *
 *@param status	(non géré)
 *
 * Note:  fonction appelée si une exception arrive au niveau du CPU du
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
 *@param pxTask	Handle (pointeur) sur la tâche ayant subit le débordement. Technique de référencement des tâches 
 * 				sous FreeRTOS
 *
 *@param pcTaskID	pointeur sur l'identifiant (string - configMAX_TASK_NAME_LEN) de la tâche définie dans la TCB
 *
 * Note:  fonction appelée si un débordement de pile associée à une tâche arrive
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

	/* Configurations Pile et contrôleur Réseau */
	NetworkInit(); 		// ATTENTION : démasque les IT (Besoin d'un Timer durant la phase d'initialisation !)

	/* Configurations périphériques internes */
	HardwareInit();	

	/* Configurations variables application */
	SoftwareInit();		

	/* Configurations Real Time Operating System */		
	RTOSInit();

        /* Démarrage mode multi-tâche */
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
