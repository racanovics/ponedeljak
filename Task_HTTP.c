/*********************************************************************
 * FileName:        Task_HTTP.c
 * Dependencies:    main.h
 * Processor:       PIC32MX795F512L
 * Compiler:        Microchip C32 v1.11A or higher
 *
 * Overview: Tâche chargée de mettre à jour les variables réseau
 ********************************************************************/
#include "main.h"



/********************************************************************
 * Tache:        void TaskControl(void *pvParameters)
 *
 * Overview:      	Tâche chargée de mettre à jour les variables réseau
 *					ainsi que la broche de sens (avant/arrière)
 *
 * Auteur               Date         Commentaire
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Théou Jean-Baptiste  7 avril 2011 Première version
 * Descoubes hugo  		16 mai  2011 vs 1.1              			                 
 *******************************************************************/
void TaskRefreshHTTP(void *pvParameters){
portTickType xLastWakeTime;
const portTickType xFrequency = NETWORK_DATA_REFRESH_PERIOD;
int compteur_vitesse = 0;   	// Pour ralentir l'incrémenation de la vitesse
int compteur_direction = 0; 	// Pour ralentir l'incrémentation de la direction

     xLastWakeTime = xTaskGetTickCount();

	for( ;; ){

		/* Action de l'utilisateur (avant ou arrière) */
		if(Marche_Avant_Arriere == 1 || Marche_Avant_Arriere == 2){

	        /* Mise à jour sens d'avancement (avant/arrière) */
			if(Marche_Avant_Arriere == 1){
				PORTClearBits(BROCHE_DIR_VITESSE);
			}
			else if(Marche_Avant_Arriere == 2){
				PORTSetBits(BROCHE_DIR_VITESSE);
			}

			/* Gestion de la consigne de courant (couple -> vitesse) */
			if(compteur_vitesse == 10){

				compteur_vitesse = 0;

				/* Protection Vitesse */
				xSemaphoreTake(xSemaphoreVitesse,portMAX_DELAY);
				{
					if(Change_Vitesse_up == 1){

						Vitesse += increment_vitesse;	
					}
					else if(Change_Vitesse_down == 1){

						Vitesse -= increment_vitesse;	
					}
				}
				xSemaphoreGive(xSemaphoreVitesse);
			}
			else{

				compteur_vitesse++;
			}

			/* Gestion de la consigne de direction */
			if(compteur_direction == 1)
			{
				compteur_direction = 0;

				/* Protection ConsDir */
				xSemaphoreTake(xSemaphoreConsDir,portMAX_DELAY);
				{
					if(Change_Direction_up == 1){

						ConsDir += increment_direction;	
					}
					else if(Change_Direction_down == 1){

						ConsDir -= increment_direction;	
					}
				}
				xSemaphoreGive(xSemaphoreConsDir);
			}	
			else{

				compteur_direction++;

			}
		}
		/* Fin Action de l'utilisateur (avant ou arrière) */
		else{

			/* Protection Vitesse*/
			xSemaphoreTake(xSemaphoreVitesse,portMAX_DELAY);
			{
				Vitesse = 0;		
			}
			xSemaphoreGive(xSemaphoreVitesse);

			/* Protection ConsDir */
			xSemaphoreTake(xSemaphoreConsDir,portMAX_DELAY);
			{
				ConsDir = ZERO_BUTE;
			}
			xSemaphoreGive(xSemaphoreConsDir);
		}

		/* xFrequency Fixe la période de rafraichissement des données réseau */
         vTaskDelayUntil( &xLastWakeTime, xFrequency );
	}
}
