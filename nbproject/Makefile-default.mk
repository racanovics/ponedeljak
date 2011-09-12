#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile

# Environment
MKDIR=mkdir -p
RM=rm -f 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/wifi-car.${IMAGE_TYPE}.elf
else
IMAGE_TYPE=production
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/wifi-car.${IMAGE_TYPE}.elf
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files
OBJECTFILES=${OBJECTDIR}/App_HTTP_custom.o ${OBJECTDIR}/App_UDP.o ${OBJECTDIR}/App_functions.o ${OBJECTDIR}/App_init.o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o ${OBJECTDIR}/FreeRTOS/list.o ${OBJECTDIR}/FreeRTOS/queue.o ${OBJECTDIR}/FreeRTOS/tasks.o ${OBJECTDIR}/IperfApp.o ${OBJECTDIR}/Main.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o ${OBJECTDIR}/RTOS_init.o ${OBJECTDIR}/TCPIP_init.o ${OBJECTDIR}/Task_DebugUART.o ${OBJECTDIR}/Task_HTTP.o ${OBJECTDIR}/Task_Network.o ${OBJECTDIR}/Task_control.o ${OBJECTDIR}/WF_Config.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=C:\\Program\ Files\\Java\\jre6/bin/
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=c:\\program\ files\\microchip\\mplab\ c32\\bin\\pic32-gcc.exe
# MP_BC is not defined
MP_AS=c:\\program\ files\\microchip\\mplab\ c32\\bin\\pic32-as.exe
MP_LD=c:\\program\ files\\microchip\\mplab\ c32\\bin\\pic32-ld.exe
MP_AR=c:\\program\ files\\microchip\\mplab\ c32\\bin\\pic32-ar.exe
# MP_BC is not defined
MP_CC_DIR=c:\\program\ files\\microchip\\mplab\ c32\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=c:\\program\ files\\microchip\\mplab\ c32\\bin
MP_LD_DIR=c:\\program\ files\\microchip\\mplab\ c32\\bin
MP_AR_DIR=c:\\program\ files\\microchip\\mplab\ c32\\bin
# MP_BC_DIR is not defined

.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/wifi-car.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o: FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.ok ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.err 
	@echo ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD=${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-I"."
	@-${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD=${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-I"." 2>&1 > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d 
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__EOL__$$/\\/g' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp
	@sed -e 's/<.*>//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e '$$s/\(^.*\ \)\(.*$$\)/\1/'  -e 's/__EOL__$$/\\/g' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d >> ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp
	@sed -e 's/<.*>//g' -e 's/\\ /__ESCAPED_SPACES__/g' -e '$$s/\(^.*\ \)\(.*$$\)/\1/' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d >> ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp 
endif
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.ok; else exit 1; fi
	
${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o: FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.ok ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.err 
	@echo ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD=${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-I"."
	@-${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD=${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-I"." 2>&1 > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__EOL__$$/\\/g' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp
	@sed -e 's/<.*>//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e '$$s/\(^.*\ \)\(.*$$\)/\1/'  -e 's/__EOL__$$/\\/g' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d >> ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp
	@sed -e 's/<.*>//g' -e 's/\\ /__ESCAPED_SPACES__/g' -e '$$s/\(^.*\ \)\(.*$$\)/\1/' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d >> ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp 
endif
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o: Microchip/TCPIP\ Stack/BigInt_helper_C32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.err 
	@echo ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d  -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o Microchip/TCPIP\ Stack/BigInt_helper_C32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD=${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-I"."
	@-${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d  -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o Microchip/TCPIP\ Stack/BigInt_helper_C32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD=${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-I"." 2>&1 > ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__EOL__$$/\\/g' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp
	@sed -e 's/<.*>//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e '$$s/\(^.*\ \)\(.*$$\)/\1/'  -e 's/__EOL__$$/\\/g' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d >> ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp
	@sed -e 's/<.*>//g' -e 's/\\ /__ESCAPED_SPACES__/g' -e '$$s/\(^.*\ \)\(.*$$\)/\1/' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d >> ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp 
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.ok; else exit 1; fi
	
else
${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o: FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.ok ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.err 
	@echo ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD=${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d,-I"."
	@-${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD=${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d,-I"." 2>&1 > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d 
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__EOL__$$/\\/g' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp
	@sed -e 's/<.*>//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e '$$s/\(^.*\ \)\(.*$$\)/\1/'  -e 's/__EOL__$$/\\/g' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d >> ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp
	@sed -e 's/<.*>//g' -e 's/\\ /__ESCAPED_SPACES__/g' -e '$$s/\(^.*\ \)\(.*$$\)/\1/' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d >> ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.asm.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.tmp 
endif
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/isr_wrapper.o.ok; else exit 1; fi
	
${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o: FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.ok ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.err 
	@echo ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD=${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d,-I"."
	@-${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD=${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d,-I"." 2>&1 > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__EOL__$$/\\/g' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp
	@sed -e 's/<.*>//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e '$$s/\(^.*\ \)\(.*$$\)/\1/'  -e 's/__EOL__$$/\\/g' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d >> ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp
	@sed -e 's/<.*>//g' -e 's/\\ /__ESCAPED_SPACES__/g' -e '$$s/\(^.*\ \)\(.*$$\)/\1/' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d >> ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.asm.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.tmp 
endif
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o: Microchip/TCPIP\ Stack/BigInt_helper_C32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.err 
	@echo ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d  -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o Microchip/TCPIP\ Stack/BigInt_helper_C32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD=${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d,-I"."
	@-${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d  -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o Microchip/TCPIP\ Stack/BigInt_helper_C32.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD=${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d,-I"." 2>&1 > ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__EOL__$$/\\/g' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp
	@sed -e 's/<.*>//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e '$$s/\(^.*\ \)\(.*$$\)/\1/'  -e 's/__EOL__$$/\\/g' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d >> ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp
	@sed -e 's/<.*>//g' -e 's/\\ /__ESCAPED_SPACES__/g' -e '$$s/\(^.*\ \)\(.*$$\)/\1/' -e 's/__ESCAPED_SPACES__/\\ /g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d >> ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.asm.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.tmp 
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt_helper_C32.o.ok; else exit 1; fi
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o: Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o Microchip/TCPIP\ Stack/HTTP2.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o Microchip/TCPIP\ Stack/HTTP2.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o: Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o: Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o Microchip/TCPIP\ Stack/WiFi/WF_Eint.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o: Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.ok; else exit 1; fi
	
${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o: FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.ok ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c   2>&1  > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.tmp ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.tmp
endif
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o: Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o Microchip/TCPIP\ Stack/Helpers.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o Microchip/TCPIP\ Stack/Helpers.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o: Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o Microchip/TCPIP\ Stack/Random.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o Microchip/TCPIP\ Stack/Random.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o: Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o Microchip/TCPIP\ Stack/WiFi/WFConsole.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o Microchip/TCPIP\ Stack/WiFi/WFConsole.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o: Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o Microchip/TCPIP\ Stack/BigInt.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o Microchip/TCPIP\ Stack/BigInt.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o: Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o Microchip/TCPIP\ Stack/WiFi/WFScan.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o Microchip/TCPIP\ Stack/WiFi/WFScan.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o: Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o Microchip/TCPIP\ Stack/Reboot.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o Microchip/TCPIP\ Stack/Reboot.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.ok; else exit 1; fi
	
${OBJECTDIR}/FreeRTOS/tasks.o: FreeRTOS/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o.ok ${OBJECTDIR}/FreeRTOS/tasks.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/tasks.o.d -o ${OBJECTDIR}/FreeRTOS/tasks.o FreeRTOS/tasks.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/tasks.o.d -o ${OBJECTDIR}/FreeRTOS/tasks.o FreeRTOS/tasks.c   2>&1  > ${OBJECTDIR}/FreeRTOS/tasks.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/tasks.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/tasks.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/FreeRTOS/tasks.o.d > ${OBJECTDIR}/FreeRTOS/tasks.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/tasks.o.tmp ${OBJECTDIR}/FreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o.tmp
endif
	@touch ${OBJECTDIR}/FreeRTOS/tasks.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/tasks.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/tasks.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/tasks.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o: Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o: Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o Microchip/TCPIP\ Stack/WiFi/WFTxPower.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.ok; else exit 1; fi
	
${OBJECTDIR}/IperfApp.o: IperfApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/IperfApp.o.d 
	@${RM} ${OBJECTDIR}/IperfApp.o.ok ${OBJECTDIR}/IperfApp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/IperfApp.o.d -o ${OBJECTDIR}/IperfApp.o IperfApp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/IperfApp.o.d -o ${OBJECTDIR}/IperfApp.o IperfApp.c   2>&1  > ${OBJECTDIR}/IperfApp.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/IperfApp.o.ok ; fi 
	@touch ${OBJECTDIR}/IperfApp.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/IperfApp.o.d > ${OBJECTDIR}/IperfApp.o.tmp
	@${RM} ${OBJECTDIR}/IperfApp.o.d 
	@${CP} ${OBJECTDIR}/IperfApp.o.tmp ${OBJECTDIR}/IperfApp.o.d 
	@${RM} ${OBJECTDIR}/IperfApp.o.tmp
endif
	@touch ${OBJECTDIR}/IperfApp.o.err 
	@cat ${OBJECTDIR}/IperfApp.o.err 
	@if [ -f ${OBJECTDIR}/IperfApp.o.ok ] ; then rm -f ${OBJECTDIR}/IperfApp.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o: Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o: Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o Microchip/TCPIP\ Stack/WiFi/WF_Spi.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o: Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o: Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o Microchip/TCPIP\ Stack/RSA.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o Microchip/TCPIP\ Stack/RSA.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.ok; else exit 1; fi
	
${OBJECTDIR}/RTOS_init.o: RTOS_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/RTOS_init.o.d 
	@${RM} ${OBJECTDIR}/RTOS_init.o.ok ${OBJECTDIR}/RTOS_init.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/RTOS_init.o.d -o ${OBJECTDIR}/RTOS_init.o RTOS_init.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/RTOS_init.o.d -o ${OBJECTDIR}/RTOS_init.o RTOS_init.c   2>&1  > ${OBJECTDIR}/RTOS_init.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/RTOS_init.o.ok ; fi 
	@touch ${OBJECTDIR}/RTOS_init.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/RTOS_init.o.d > ${OBJECTDIR}/RTOS_init.o.tmp
	@${RM} ${OBJECTDIR}/RTOS_init.o.d 
	@${CP} ${OBJECTDIR}/RTOS_init.o.tmp ${OBJECTDIR}/RTOS_init.o.d 
	@${RM} ${OBJECTDIR}/RTOS_init.o.tmp
endif
	@touch ${OBJECTDIR}/RTOS_init.o.err 
	@cat ${OBJECTDIR}/RTOS_init.o.err 
	@if [ -f ${OBJECTDIR}/RTOS_init.o.ok ] ; then rm -f ${OBJECTDIR}/RTOS_init.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o: Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o: Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.ok; else exit 1; fi
	
${OBJECTDIR}/FreeRTOS/list.o: FreeRTOS/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o.ok ${OBJECTDIR}/FreeRTOS/list.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/list.o.d -o ${OBJECTDIR}/FreeRTOS/list.o FreeRTOS/list.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/list.o.d -o ${OBJECTDIR}/FreeRTOS/list.o FreeRTOS/list.c   2>&1  > ${OBJECTDIR}/FreeRTOS/list.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/list.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/list.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/FreeRTOS/list.o.d > ${OBJECTDIR}/FreeRTOS/list.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/list.o.tmp ${OBJECTDIR}/FreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o.tmp
endif
	@touch ${OBJECTDIR}/FreeRTOS/list.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/list.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/list.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/list.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o: Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o: Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o: Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o Microchip/TCPIP\ Stack/Hashes.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o Microchip/TCPIP\ Stack/Hashes.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.ok; else exit 1; fi
	
${OBJECTDIR}/App_init.o: App_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/App_init.o.d 
	@${RM} ${OBJECTDIR}/App_init.o.ok ${OBJECTDIR}/App_init.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_init.o.d -o ${OBJECTDIR}/App_init.o App_init.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_init.o.d -o ${OBJECTDIR}/App_init.o App_init.c   2>&1  > ${OBJECTDIR}/App_init.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/App_init.o.ok ; fi 
	@touch ${OBJECTDIR}/App_init.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/App_init.o.d > ${OBJECTDIR}/App_init.o.tmp
	@${RM} ${OBJECTDIR}/App_init.o.d 
	@${CP} ${OBJECTDIR}/App_init.o.tmp ${OBJECTDIR}/App_init.o.d 
	@${RM} ${OBJECTDIR}/App_init.o.tmp
endif
	@touch ${OBJECTDIR}/App_init.o.err 
	@cat ${OBJECTDIR}/App_init.o.err 
	@if [ -f ${OBJECTDIR}/App_init.o.ok ] ; then rm -f ${OBJECTDIR}/App_init.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o: Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o Microchip/TCPIP\ Stack/WiFi/WFInit.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o Microchip/TCPIP\ Stack/WiFi/WFInit.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o: Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o Microchip/TCPIP\ Stack/NBNS.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o Microchip/TCPIP\ Stack/NBNS.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o: Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o Microchip/TCPIP\ Stack/Delay.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o Microchip/TCPIP\ Stack/Delay.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o: Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o Microchip/TCPIP\ Stack/MPFS2.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o Microchip/TCPIP\ Stack/MPFS2.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.ok; else exit 1; fi
	
${OBJECTDIR}/App_HTTP_custom.o: App_HTTP_custom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/App_HTTP_custom.o.d 
	@${RM} ${OBJECTDIR}/App_HTTP_custom.o.ok ${OBJECTDIR}/App_HTTP_custom.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_HTTP_custom.o.d -o ${OBJECTDIR}/App_HTTP_custom.o App_HTTP_custom.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_HTTP_custom.o.d -o ${OBJECTDIR}/App_HTTP_custom.o App_HTTP_custom.c   2>&1  > ${OBJECTDIR}/App_HTTP_custom.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/App_HTTP_custom.o.ok ; fi 
	@touch ${OBJECTDIR}/App_HTTP_custom.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/App_HTTP_custom.o.d > ${OBJECTDIR}/App_HTTP_custom.o.tmp
	@${RM} ${OBJECTDIR}/App_HTTP_custom.o.d 
	@${CP} ${OBJECTDIR}/App_HTTP_custom.o.tmp ${OBJECTDIR}/App_HTTP_custom.o.d 
	@${RM} ${OBJECTDIR}/App_HTTP_custom.o.tmp
endif
	@touch ${OBJECTDIR}/App_HTTP_custom.o.err 
	@cat ${OBJECTDIR}/App_HTTP_custom.o.err 
	@if [ -f ${OBJECTDIR}/App_HTTP_custom.o.ok ] ; then rm -f ${OBJECTDIR}/App_HTTP_custom.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o: Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.ok; else exit 1; fi
	
${OBJECTDIR}/Task_control.o: Task_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Task_control.o.d 
	@${RM} ${OBJECTDIR}/Task_control.o.ok ${OBJECTDIR}/Task_control.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_control.o.d -o ${OBJECTDIR}/Task_control.o Task_control.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_control.o.d -o ${OBJECTDIR}/Task_control.o Task_control.c   2>&1  > ${OBJECTDIR}/Task_control.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Task_control.o.ok ; fi 
	@touch ${OBJECTDIR}/Task_control.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Task_control.o.d > ${OBJECTDIR}/Task_control.o.tmp
	@${RM} ${OBJECTDIR}/Task_control.o.d 
	@${CP} ${OBJECTDIR}/Task_control.o.tmp ${OBJECTDIR}/Task_control.o.d 
	@${RM} ${OBJECTDIR}/Task_control.o.tmp
endif
	@touch ${OBJECTDIR}/Task_control.o.err 
	@cat ${OBJECTDIR}/Task_control.o.err 
	@if [ -f ${OBJECTDIR}/Task_control.o.ok ] ; then rm -f ${OBJECTDIR}/Task_control.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o: Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o Microchip/TCPIP\ Stack/ARCFOUR.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o Microchip/TCPIP\ Stack/ARCFOUR.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o: Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.ok; else exit 1; fi
	
${OBJECTDIR}/FreeRTOS/queue.o: FreeRTOS/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o.ok ${OBJECTDIR}/FreeRTOS/queue.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/queue.o.d -o ${OBJECTDIR}/FreeRTOS/queue.o FreeRTOS/queue.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/queue.o.d -o ${OBJECTDIR}/FreeRTOS/queue.o FreeRTOS/queue.c   2>&1  > ${OBJECTDIR}/FreeRTOS/queue.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/queue.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/queue.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/FreeRTOS/queue.o.d > ${OBJECTDIR}/FreeRTOS/queue.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/queue.o.tmp ${OBJECTDIR}/FreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o.tmp
endif
	@touch ${OBJECTDIR}/FreeRTOS/queue.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/queue.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/queue.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/queue.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o: Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o Microchip/TCPIP\ Stack/SPIEEPROM.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o Microchip/TCPIP\ Stack/SPIEEPROM.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o: Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o Microchip/TCPIP\ Stack/IP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o Microchip/TCPIP\ Stack/IP.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.ok; else exit 1; fi
	
${OBJECTDIR}/App_UDP.o: App_UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/App_UDP.o.d 
	@${RM} ${OBJECTDIR}/App_UDP.o.ok ${OBJECTDIR}/App_UDP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_UDP.o.d -o ${OBJECTDIR}/App_UDP.o App_UDP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_UDP.o.d -o ${OBJECTDIR}/App_UDP.o App_UDP.c   2>&1  > ${OBJECTDIR}/App_UDP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/App_UDP.o.ok ; fi 
	@touch ${OBJECTDIR}/App_UDP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/App_UDP.o.d > ${OBJECTDIR}/App_UDP.o.tmp
	@${RM} ${OBJECTDIR}/App_UDP.o.d 
	@${CP} ${OBJECTDIR}/App_UDP.o.tmp ${OBJECTDIR}/App_UDP.o.d 
	@${RM} ${OBJECTDIR}/App_UDP.o.tmp
endif
	@touch ${OBJECTDIR}/App_UDP.o.err 
	@cat ${OBJECTDIR}/App_UDP.o.err 
	@if [ -f ${OBJECTDIR}/App_UDP.o.ok ] ; then rm -f ${OBJECTDIR}/App_UDP.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o: Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o Microchip/TCPIP\ Stack/WiFi/WFMac.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o Microchip/TCPIP\ Stack/WiFi/WFMac.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o: Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o Microchip/TCPIP\ Stack/StackTsk.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o Microchip/TCPIP\ Stack/StackTsk.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.ok; else exit 1; fi
	
${OBJECTDIR}/Main.o: Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Main.o.d 
	@${RM} ${OBJECTDIR}/Main.o.ok ${OBJECTDIR}/Main.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Main.o.d -o ${OBJECTDIR}/Main.o Main.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Main.o.d -o ${OBJECTDIR}/Main.o Main.c   2>&1  > ${OBJECTDIR}/Main.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Main.o.ok ; fi 
	@touch ${OBJECTDIR}/Main.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Main.o.d > ${OBJECTDIR}/Main.o.tmp
	@${RM} ${OBJECTDIR}/Main.o.d 
	@${CP} ${OBJECTDIR}/Main.o.tmp ${OBJECTDIR}/Main.o.d 
	@${RM} ${OBJECTDIR}/Main.o.tmp
endif
	@touch ${OBJECTDIR}/Main.o.err 
	@cat ${OBJECTDIR}/Main.o.err 
	@if [ -f ${OBJECTDIR}/Main.o.ok ] ; then rm -f ${OBJECTDIR}/Main.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o: Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o Microchip/TCPIP\ Stack/ICMP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o Microchip/TCPIP\ Stack/ICMP.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o: Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.ok; else exit 1; fi
	
${OBJECTDIR}/App_functions.o: App_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/App_functions.o.d 
	@${RM} ${OBJECTDIR}/App_functions.o.ok ${OBJECTDIR}/App_functions.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_functions.o.d -o ${OBJECTDIR}/App_functions.o App_functions.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_functions.o.d -o ${OBJECTDIR}/App_functions.o App_functions.c   2>&1  > ${OBJECTDIR}/App_functions.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/App_functions.o.ok ; fi 
	@touch ${OBJECTDIR}/App_functions.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/App_functions.o.d > ${OBJECTDIR}/App_functions.o.tmp
	@${RM} ${OBJECTDIR}/App_functions.o.d 
	@${CP} ${OBJECTDIR}/App_functions.o.tmp ${OBJECTDIR}/App_functions.o.d 
	@${RM} ${OBJECTDIR}/App_functions.o.tmp
endif
	@touch ${OBJECTDIR}/App_functions.o.err 
	@cat ${OBJECTDIR}/App_functions.o.err 
	@if [ -f ${OBJECTDIR}/App_functions.o.ok ] ; then rm -f ${OBJECTDIR}/App_functions.o.ok; else exit 1; fi
	
${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o: FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.ok ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d -o ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o FreeRTOS/Source/portable/MemMang/heap_1.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d -o ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o FreeRTOS/Source/portable/MemMang/heap_1.c   2>&1  > ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d > ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.tmp ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.tmp
endif
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o: Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o: Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o Microchip/TCPIP\ Stack/UDP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o Microchip/TCPIP\ Stack/UDP.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o: Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.ok; else exit 1; fi
	
${OBJECTDIR}/Task_HTTP.o: Task_HTTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Task_HTTP.o.d 
	@${RM} ${OBJECTDIR}/Task_HTTP.o.ok ${OBJECTDIR}/Task_HTTP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_HTTP.o.d -o ${OBJECTDIR}/Task_HTTP.o Task_HTTP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_HTTP.o.d -o ${OBJECTDIR}/Task_HTTP.o Task_HTTP.c   2>&1  > ${OBJECTDIR}/Task_HTTP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Task_HTTP.o.ok ; fi 
	@touch ${OBJECTDIR}/Task_HTTP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Task_HTTP.o.d > ${OBJECTDIR}/Task_HTTP.o.tmp
	@${RM} ${OBJECTDIR}/Task_HTTP.o.d 
	@${CP} ${OBJECTDIR}/Task_HTTP.o.tmp ${OBJECTDIR}/Task_HTTP.o.d 
	@${RM} ${OBJECTDIR}/Task_HTTP.o.tmp
endif
	@touch ${OBJECTDIR}/Task_HTTP.o.err 
	@cat ${OBJECTDIR}/Task_HTTP.o.err 
	@if [ -f ${OBJECTDIR}/Task_HTTP.o.ok ] ; then rm -f ${OBJECTDIR}/Task_HTTP.o.ok; else exit 1; fi
	
${OBJECTDIR}/TCPIP_init.o: TCPIP_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/TCPIP_init.o.d 
	@${RM} ${OBJECTDIR}/TCPIP_init.o.ok ${OBJECTDIR}/TCPIP_init.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/TCPIP_init.o.d -o ${OBJECTDIR}/TCPIP_init.o TCPIP_init.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/TCPIP_init.o.d -o ${OBJECTDIR}/TCPIP_init.o TCPIP_init.c   2>&1  > ${OBJECTDIR}/TCPIP_init.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/TCPIP_init.o.ok ; fi 
	@touch ${OBJECTDIR}/TCPIP_init.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/TCPIP_init.o.d > ${OBJECTDIR}/TCPIP_init.o.tmp
	@${RM} ${OBJECTDIR}/TCPIP_init.o.d 
	@${CP} ${OBJECTDIR}/TCPIP_init.o.tmp ${OBJECTDIR}/TCPIP_init.o.d 
	@${RM} ${OBJECTDIR}/TCPIP_init.o.tmp
endif
	@touch ${OBJECTDIR}/TCPIP_init.o.err 
	@cat ${OBJECTDIR}/TCPIP_init.o.err 
	@if [ -f ${OBJECTDIR}/TCPIP_init.o.ok ] ; then rm -f ${OBJECTDIR}/TCPIP_init.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o: Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o Microchip/TCPIP\ Stack/Tick.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o Microchip/TCPIP\ Stack/Tick.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o: Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o: Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o Microchip/TCPIP\ Stack/DHCPs.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o Microchip/TCPIP\ Stack/DHCPs.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.ok; else exit 1; fi
	
${OBJECTDIR}/Task_Network.o: Task_Network.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Task_Network.o.d 
	@${RM} ${OBJECTDIR}/Task_Network.o.ok ${OBJECTDIR}/Task_Network.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_Network.o.d -o ${OBJECTDIR}/Task_Network.o Task_Network.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_Network.o.d -o ${OBJECTDIR}/Task_Network.o Task_Network.c   2>&1  > ${OBJECTDIR}/Task_Network.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Task_Network.o.ok ; fi 
	@touch ${OBJECTDIR}/Task_Network.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Task_Network.o.d > ${OBJECTDIR}/Task_Network.o.tmp
	@${RM} ${OBJECTDIR}/Task_Network.o.d 
	@${CP} ${OBJECTDIR}/Task_Network.o.tmp ${OBJECTDIR}/Task_Network.o.d 
	@${RM} ${OBJECTDIR}/Task_Network.o.tmp
endif
	@touch ${OBJECTDIR}/Task_Network.o.err 
	@cat ${OBJECTDIR}/Task_Network.o.err 
	@if [ -f ${OBJECTDIR}/Task_Network.o.ok ] ; then rm -f ${OBJECTDIR}/Task_Network.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o: Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o Microchip/TCPIP\ Stack/TCP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o Microchip/TCPIP\ Stack/TCP.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.ok; else exit 1; fi
	
${OBJECTDIR}/Task_DebugUART.o: Task_DebugUART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Task_DebugUART.o.d 
	@${RM} ${OBJECTDIR}/Task_DebugUART.o.ok ${OBJECTDIR}/Task_DebugUART.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_DebugUART.o.d -o ${OBJECTDIR}/Task_DebugUART.o Task_DebugUART.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_DebugUART.o.d -o ${OBJECTDIR}/Task_DebugUART.o Task_DebugUART.c   2>&1  > ${OBJECTDIR}/Task_DebugUART.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Task_DebugUART.o.ok ; fi 
	@touch ${OBJECTDIR}/Task_DebugUART.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Task_DebugUART.o.d > ${OBJECTDIR}/Task_DebugUART.o.tmp
	@${RM} ${OBJECTDIR}/Task_DebugUART.o.d 
	@${CP} ${OBJECTDIR}/Task_DebugUART.o.tmp ${OBJECTDIR}/Task_DebugUART.o.d 
	@${RM} ${OBJECTDIR}/Task_DebugUART.o.tmp
endif
	@touch ${OBJECTDIR}/Task_DebugUART.o.err 
	@cat ${OBJECTDIR}/Task_DebugUART.o.err 
	@if [ -f ${OBJECTDIR}/Task_DebugUART.o.ok ] ; then rm -f ${OBJECTDIR}/Task_DebugUART.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o: Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o Microchip/TCPIP\ Stack/LCDBlocking.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o Microchip/TCPIP\ Stack/LCDBlocking.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o: Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.ok; else exit 1; fi
	
${OBJECTDIR}/WF_Config.o: WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/WF_Config.o.ok ${OBJECTDIR}/WF_Config.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/WF_Config.o.d -o ${OBJECTDIR}/WF_Config.o WF_Config.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/WF_Config.o.d -o ${OBJECTDIR}/WF_Config.o WF_Config.c   2>&1  > ${OBJECTDIR}/WF_Config.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/WF_Config.o.ok ; fi 
	@touch ${OBJECTDIR}/WF_Config.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/WF_Config.o.d > ${OBJECTDIR}/WF_Config.o.tmp
	@${RM} ${OBJECTDIR}/WF_Config.o.d 
	@${CP} ${OBJECTDIR}/WF_Config.o.tmp ${OBJECTDIR}/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/WF_Config.o.tmp
endif
	@touch ${OBJECTDIR}/WF_Config.o.err 
	@cat ${OBJECTDIR}/WF_Config.o.err 
	@if [ -f ${OBJECTDIR}/WF_Config.o.ok ] ; then rm -f ${OBJECTDIR}/WF_Config.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o: Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o Microchip/TCPIP\ Stack/ARP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o Microchip/TCPIP\ Stack/ARP.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.ok; else exit 1; fi
	
else
${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o: Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o Microchip/TCPIP\ Stack/HTTP2.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o Microchip/TCPIP\ Stack/HTTP2.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/HTTP2.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o: Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o: Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o Microchip/TCPIP\ Stack/WiFi/WF_Eint.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Eint.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o: Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.ok; else exit 1; fi
	
${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o: FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.ok ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c   2>&1  > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d > ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.tmp ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.tmp
endif
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o: Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o Microchip/TCPIP\ Stack/Helpers.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o Microchip/TCPIP\ Stack/Helpers.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Helpers.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o: Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o Microchip/TCPIP\ Stack/Random.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o Microchip/TCPIP\ Stack/Random.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Random.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o: Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o Microchip/TCPIP\ Stack/WiFi/WFConsole.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o Microchip/TCPIP\ Stack/WiFi/WFConsole.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsole.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o: Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o Microchip/TCPIP\ Stack/BigInt.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o Microchip/TCPIP\ Stack/BigInt.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/BigInt.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o: Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o Microchip/TCPIP\ Stack/WiFi/WFScan.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o Microchip/TCPIP\ Stack/WiFi/WFScan.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFScan.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o: Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o Microchip/TCPIP\ Stack/Reboot.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o Microchip/TCPIP\ Stack/Reboot.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Reboot.o.ok; else exit 1; fi
	
${OBJECTDIR}/FreeRTOS/tasks.o: FreeRTOS/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o.ok ${OBJECTDIR}/FreeRTOS/tasks.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/tasks.o.d -o ${OBJECTDIR}/FreeRTOS/tasks.o FreeRTOS/tasks.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/tasks.o.d -o ${OBJECTDIR}/FreeRTOS/tasks.o FreeRTOS/tasks.c   2>&1  > ${OBJECTDIR}/FreeRTOS/tasks.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/tasks.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/tasks.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/FreeRTOS/tasks.o.d > ${OBJECTDIR}/FreeRTOS/tasks.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/tasks.o.tmp ${OBJECTDIR}/FreeRTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/tasks.o.tmp
endif
	@touch ${OBJECTDIR}/FreeRTOS/tasks.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/tasks.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/tasks.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/tasks.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o: Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o: Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o Microchip/TCPIP\ Stack/WiFi/WFTxPower.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFTxPower.o.ok; else exit 1; fi
	
${OBJECTDIR}/IperfApp.o: IperfApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/IperfApp.o.d 
	@${RM} ${OBJECTDIR}/IperfApp.o.ok ${OBJECTDIR}/IperfApp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/IperfApp.o.d -o ${OBJECTDIR}/IperfApp.o IperfApp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/IperfApp.o.d -o ${OBJECTDIR}/IperfApp.o IperfApp.c   2>&1  > ${OBJECTDIR}/IperfApp.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/IperfApp.o.ok ; fi 
	@touch ${OBJECTDIR}/IperfApp.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/IperfApp.o.d > ${OBJECTDIR}/IperfApp.o.tmp
	@${RM} ${OBJECTDIR}/IperfApp.o.d 
	@${CP} ${OBJECTDIR}/IperfApp.o.tmp ${OBJECTDIR}/IperfApp.o.d 
	@${RM} ${OBJECTDIR}/IperfApp.o.tmp
endif
	@touch ${OBJECTDIR}/IperfApp.o.err 
	@cat ${OBJECTDIR}/IperfApp.o.err 
	@if [ -f ${OBJECTDIR}/IperfApp.o.ok ] ; then rm -f ${OBJECTDIR}/IperfApp.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o: Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o: Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o Microchip/TCPIP\ Stack/WiFi/WF_Spi.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WF_Spi.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o: Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o: Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o Microchip/TCPIP\ Stack/RSA.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o Microchip/TCPIP\ Stack/RSA.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/RSA.o.ok; else exit 1; fi
	
${OBJECTDIR}/RTOS_init.o: RTOS_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/RTOS_init.o.d 
	@${RM} ${OBJECTDIR}/RTOS_init.o.ok ${OBJECTDIR}/RTOS_init.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/RTOS_init.o.d -o ${OBJECTDIR}/RTOS_init.o RTOS_init.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/RTOS_init.o.d -o ${OBJECTDIR}/RTOS_init.o RTOS_init.c   2>&1  > ${OBJECTDIR}/RTOS_init.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/RTOS_init.o.ok ; fi 
	@touch ${OBJECTDIR}/RTOS_init.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/RTOS_init.o.d > ${OBJECTDIR}/RTOS_init.o.tmp
	@${RM} ${OBJECTDIR}/RTOS_init.o.d 
	@${CP} ${OBJECTDIR}/RTOS_init.o.tmp ${OBJECTDIR}/RTOS_init.o.d 
	@${RM} ${OBJECTDIR}/RTOS_init.o.tmp
endif
	@touch ${OBJECTDIR}/RTOS_init.o.err 
	@cat ${OBJECTDIR}/RTOS_init.o.err 
	@if [ -f ${OBJECTDIR}/RTOS_init.o.ok ] ; then rm -f ${OBJECTDIR}/RTOS_init.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o: Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o: Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.ok; else exit 1; fi
	
${OBJECTDIR}/FreeRTOS/list.o: FreeRTOS/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o.ok ${OBJECTDIR}/FreeRTOS/list.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/list.o.d -o ${OBJECTDIR}/FreeRTOS/list.o FreeRTOS/list.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/list.o.d -o ${OBJECTDIR}/FreeRTOS/list.o FreeRTOS/list.c   2>&1  > ${OBJECTDIR}/FreeRTOS/list.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/list.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/list.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/FreeRTOS/list.o.d > ${OBJECTDIR}/FreeRTOS/list.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/list.o.tmp ${OBJECTDIR}/FreeRTOS/list.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/list.o.tmp
endif
	@touch ${OBJECTDIR}/FreeRTOS/list.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/list.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/list.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/list.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o: Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o: Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o: Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o Microchip/TCPIP\ Stack/Hashes.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o Microchip/TCPIP\ Stack/Hashes.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Hashes.o.ok; else exit 1; fi
	
${OBJECTDIR}/App_init.o: App_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/App_init.o.d 
	@${RM} ${OBJECTDIR}/App_init.o.ok ${OBJECTDIR}/App_init.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_init.o.d -o ${OBJECTDIR}/App_init.o App_init.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_init.o.d -o ${OBJECTDIR}/App_init.o App_init.c   2>&1  > ${OBJECTDIR}/App_init.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/App_init.o.ok ; fi 
	@touch ${OBJECTDIR}/App_init.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/App_init.o.d > ${OBJECTDIR}/App_init.o.tmp
	@${RM} ${OBJECTDIR}/App_init.o.d 
	@${CP} ${OBJECTDIR}/App_init.o.tmp ${OBJECTDIR}/App_init.o.d 
	@${RM} ${OBJECTDIR}/App_init.o.tmp
endif
	@touch ${OBJECTDIR}/App_init.o.err 
	@cat ${OBJECTDIR}/App_init.o.err 
	@if [ -f ${OBJECTDIR}/App_init.o.ok ] ; then rm -f ${OBJECTDIR}/App_init.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o: Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o Microchip/TCPIP\ Stack/WiFi/WFInit.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o Microchip/TCPIP\ Stack/WiFi/WFInit.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFInit.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o: Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o Microchip/TCPIP\ Stack/NBNS.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o Microchip/TCPIP\ Stack/NBNS.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/NBNS.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o: Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o Microchip/TCPIP\ Stack/Delay.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o Microchip/TCPIP\ Stack/Delay.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Delay.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o: Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o Microchip/TCPIP\ Stack/MPFS2.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o Microchip/TCPIP\ Stack/MPFS2.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/MPFS2.o.ok; else exit 1; fi
	
${OBJECTDIR}/App_HTTP_custom.o: App_HTTP_custom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/App_HTTP_custom.o.d 
	@${RM} ${OBJECTDIR}/App_HTTP_custom.o.ok ${OBJECTDIR}/App_HTTP_custom.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_HTTP_custom.o.d -o ${OBJECTDIR}/App_HTTP_custom.o App_HTTP_custom.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_HTTP_custom.o.d -o ${OBJECTDIR}/App_HTTP_custom.o App_HTTP_custom.c   2>&1  > ${OBJECTDIR}/App_HTTP_custom.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/App_HTTP_custom.o.ok ; fi 
	@touch ${OBJECTDIR}/App_HTTP_custom.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/App_HTTP_custom.o.d > ${OBJECTDIR}/App_HTTP_custom.o.tmp
	@${RM} ${OBJECTDIR}/App_HTTP_custom.o.d 
	@${CP} ${OBJECTDIR}/App_HTTP_custom.o.tmp ${OBJECTDIR}/App_HTTP_custom.o.d 
	@${RM} ${OBJECTDIR}/App_HTTP_custom.o.tmp
endif
	@touch ${OBJECTDIR}/App_HTTP_custom.o.err 
	@cat ${OBJECTDIR}/App_HTTP_custom.o.err 
	@if [ -f ${OBJECTDIR}/App_HTTP_custom.o.ok ] ; then rm -f ${OBJECTDIR}/App_HTTP_custom.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o: Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.ok; else exit 1; fi
	
${OBJECTDIR}/Task_control.o: Task_control.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Task_control.o.d 
	@${RM} ${OBJECTDIR}/Task_control.o.ok ${OBJECTDIR}/Task_control.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_control.o.d -o ${OBJECTDIR}/Task_control.o Task_control.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_control.o.d -o ${OBJECTDIR}/Task_control.o Task_control.c   2>&1  > ${OBJECTDIR}/Task_control.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Task_control.o.ok ; fi 
	@touch ${OBJECTDIR}/Task_control.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Task_control.o.d > ${OBJECTDIR}/Task_control.o.tmp
	@${RM} ${OBJECTDIR}/Task_control.o.d 
	@${CP} ${OBJECTDIR}/Task_control.o.tmp ${OBJECTDIR}/Task_control.o.d 
	@${RM} ${OBJECTDIR}/Task_control.o.tmp
endif
	@touch ${OBJECTDIR}/Task_control.o.err 
	@cat ${OBJECTDIR}/Task_control.o.err 
	@if [ -f ${OBJECTDIR}/Task_control.o.ok ] ; then rm -f ${OBJECTDIR}/Task_control.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o: Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o Microchip/TCPIP\ Stack/ARCFOUR.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o Microchip/TCPIP\ Stack/ARCFOUR.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARCFOUR.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o: Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.ok; else exit 1; fi
	
${OBJECTDIR}/FreeRTOS/queue.o: FreeRTOS/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o.ok ${OBJECTDIR}/FreeRTOS/queue.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/queue.o.d -o ${OBJECTDIR}/FreeRTOS/queue.o FreeRTOS/queue.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/queue.o.d -o ${OBJECTDIR}/FreeRTOS/queue.o FreeRTOS/queue.c   2>&1  > ${OBJECTDIR}/FreeRTOS/queue.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/queue.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/queue.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/FreeRTOS/queue.o.d > ${OBJECTDIR}/FreeRTOS/queue.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/queue.o.tmp ${OBJECTDIR}/FreeRTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/queue.o.tmp
endif
	@touch ${OBJECTDIR}/FreeRTOS/queue.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/queue.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/queue.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/queue.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o: Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o Microchip/TCPIP\ Stack/SPIEEPROM.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o Microchip/TCPIP\ Stack/SPIEEPROM.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/SPIEEPROM.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o: Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o Microchip/TCPIP\ Stack/IP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o Microchip/TCPIP\ Stack/IP.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/IP.o.ok; else exit 1; fi
	
${OBJECTDIR}/App_UDP.o: App_UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/App_UDP.o.d 
	@${RM} ${OBJECTDIR}/App_UDP.o.ok ${OBJECTDIR}/App_UDP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_UDP.o.d -o ${OBJECTDIR}/App_UDP.o App_UDP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_UDP.o.d -o ${OBJECTDIR}/App_UDP.o App_UDP.c   2>&1  > ${OBJECTDIR}/App_UDP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/App_UDP.o.ok ; fi 
	@touch ${OBJECTDIR}/App_UDP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/App_UDP.o.d > ${OBJECTDIR}/App_UDP.o.tmp
	@${RM} ${OBJECTDIR}/App_UDP.o.d 
	@${CP} ${OBJECTDIR}/App_UDP.o.tmp ${OBJECTDIR}/App_UDP.o.d 
	@${RM} ${OBJECTDIR}/App_UDP.o.tmp
endif
	@touch ${OBJECTDIR}/App_UDP.o.err 
	@cat ${OBJECTDIR}/App_UDP.o.err 
	@if [ -f ${OBJECTDIR}/App_UDP.o.ok ] ; then rm -f ${OBJECTDIR}/App_UDP.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o: Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o Microchip/TCPIP\ Stack/WiFi/WFMac.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o Microchip/TCPIP\ Stack/WiFi/WFMac.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMac.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o: Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o Microchip/TCPIP\ Stack/StackTsk.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o Microchip/TCPIP\ Stack/StackTsk.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/StackTsk.o.ok; else exit 1; fi
	
${OBJECTDIR}/Main.o: Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Main.o.d 
	@${RM} ${OBJECTDIR}/Main.o.ok ${OBJECTDIR}/Main.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Main.o.d -o ${OBJECTDIR}/Main.o Main.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Main.o.d -o ${OBJECTDIR}/Main.o Main.c   2>&1  > ${OBJECTDIR}/Main.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Main.o.ok ; fi 
	@touch ${OBJECTDIR}/Main.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Main.o.d > ${OBJECTDIR}/Main.o.tmp
	@${RM} ${OBJECTDIR}/Main.o.d 
	@${CP} ${OBJECTDIR}/Main.o.tmp ${OBJECTDIR}/Main.o.d 
	@${RM} ${OBJECTDIR}/Main.o.tmp
endif
	@touch ${OBJECTDIR}/Main.o.err 
	@cat ${OBJECTDIR}/Main.o.err 
	@if [ -f ${OBJECTDIR}/Main.o.ok ] ; then rm -f ${OBJECTDIR}/Main.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o: Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o Microchip/TCPIP\ Stack/ICMP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o Microchip/TCPIP\ Stack/ICMP.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/ICMP.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o: Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.ok; else exit 1; fi
	
${OBJECTDIR}/App_functions.o: App_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/App_functions.o.d 
	@${RM} ${OBJECTDIR}/App_functions.o.ok ${OBJECTDIR}/App_functions.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_functions.o.d -o ${OBJECTDIR}/App_functions.o App_functions.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/App_functions.o.d -o ${OBJECTDIR}/App_functions.o App_functions.c   2>&1  > ${OBJECTDIR}/App_functions.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/App_functions.o.ok ; fi 
	@touch ${OBJECTDIR}/App_functions.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/App_functions.o.d > ${OBJECTDIR}/App_functions.o.tmp
	@${RM} ${OBJECTDIR}/App_functions.o.d 
	@${CP} ${OBJECTDIR}/App_functions.o.tmp ${OBJECTDIR}/App_functions.o.d 
	@${RM} ${OBJECTDIR}/App_functions.o.tmp
endif
	@touch ${OBJECTDIR}/App_functions.o.err 
	@cat ${OBJECTDIR}/App_functions.o.err 
	@if [ -f ${OBJECTDIR}/App_functions.o.ok ] ; then rm -f ${OBJECTDIR}/App_functions.o.ok; else exit 1; fi
	
${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o: FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.ok ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d -o ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o FreeRTOS/Source/portable/MemMang/heap_1.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d -o ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o FreeRTOS/Source/portable/MemMang/heap_1.c   2>&1  > ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.ok ; fi 
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d > ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.tmp
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d 
	@${CP} ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.tmp ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.tmp
endif
	@touch ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.err 
	@cat ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.err 
	@if [ -f ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.ok ] ; then rm -f ${OBJECTDIR}/FreeRTOS/Source/portable/MemMang/heap_1.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o: Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o: Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o Microchip/TCPIP\ Stack/UDP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o Microchip/TCPIP\ Stack/UDP.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/UDP.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o: Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.ok; else exit 1; fi
	
${OBJECTDIR}/Task_HTTP.o: Task_HTTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Task_HTTP.o.d 
	@${RM} ${OBJECTDIR}/Task_HTTP.o.ok ${OBJECTDIR}/Task_HTTP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_HTTP.o.d -o ${OBJECTDIR}/Task_HTTP.o Task_HTTP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_HTTP.o.d -o ${OBJECTDIR}/Task_HTTP.o Task_HTTP.c   2>&1  > ${OBJECTDIR}/Task_HTTP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Task_HTTP.o.ok ; fi 
	@touch ${OBJECTDIR}/Task_HTTP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Task_HTTP.o.d > ${OBJECTDIR}/Task_HTTP.o.tmp
	@${RM} ${OBJECTDIR}/Task_HTTP.o.d 
	@${CP} ${OBJECTDIR}/Task_HTTP.o.tmp ${OBJECTDIR}/Task_HTTP.o.d 
	@${RM} ${OBJECTDIR}/Task_HTTP.o.tmp
endif
	@touch ${OBJECTDIR}/Task_HTTP.o.err 
	@cat ${OBJECTDIR}/Task_HTTP.o.err 
	@if [ -f ${OBJECTDIR}/Task_HTTP.o.ok ] ; then rm -f ${OBJECTDIR}/Task_HTTP.o.ok; else exit 1; fi
	
${OBJECTDIR}/TCPIP_init.o: TCPIP_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/TCPIP_init.o.d 
	@${RM} ${OBJECTDIR}/TCPIP_init.o.ok ${OBJECTDIR}/TCPIP_init.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/TCPIP_init.o.d -o ${OBJECTDIR}/TCPIP_init.o TCPIP_init.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/TCPIP_init.o.d -o ${OBJECTDIR}/TCPIP_init.o TCPIP_init.c   2>&1  > ${OBJECTDIR}/TCPIP_init.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/TCPIP_init.o.ok ; fi 
	@touch ${OBJECTDIR}/TCPIP_init.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/TCPIP_init.o.d > ${OBJECTDIR}/TCPIP_init.o.tmp
	@${RM} ${OBJECTDIR}/TCPIP_init.o.d 
	@${CP} ${OBJECTDIR}/TCPIP_init.o.tmp ${OBJECTDIR}/TCPIP_init.o.d 
	@${RM} ${OBJECTDIR}/TCPIP_init.o.tmp
endif
	@touch ${OBJECTDIR}/TCPIP_init.o.err 
	@cat ${OBJECTDIR}/TCPIP_init.o.err 
	@if [ -f ${OBJECTDIR}/TCPIP_init.o.ok ] ; then rm -f ${OBJECTDIR}/TCPIP_init.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o: Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o Microchip/TCPIP\ Stack/Tick.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o Microchip/TCPIP\ Stack/Tick.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/Tick.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o: Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o: Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o Microchip/TCPIP\ Stack/DHCPs.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o Microchip/TCPIP\ Stack/DHCPs.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/DHCPs.o.ok; else exit 1; fi
	
${OBJECTDIR}/Task_Network.o: Task_Network.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Task_Network.o.d 
	@${RM} ${OBJECTDIR}/Task_Network.o.ok ${OBJECTDIR}/Task_Network.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_Network.o.d -o ${OBJECTDIR}/Task_Network.o Task_Network.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_Network.o.d -o ${OBJECTDIR}/Task_Network.o Task_Network.c   2>&1  > ${OBJECTDIR}/Task_Network.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Task_Network.o.ok ; fi 
	@touch ${OBJECTDIR}/Task_Network.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Task_Network.o.d > ${OBJECTDIR}/Task_Network.o.tmp
	@${RM} ${OBJECTDIR}/Task_Network.o.d 
	@${CP} ${OBJECTDIR}/Task_Network.o.tmp ${OBJECTDIR}/Task_Network.o.d 
	@${RM} ${OBJECTDIR}/Task_Network.o.tmp
endif
	@touch ${OBJECTDIR}/Task_Network.o.err 
	@cat ${OBJECTDIR}/Task_Network.o.err 
	@if [ -f ${OBJECTDIR}/Task_Network.o.ok ] ; then rm -f ${OBJECTDIR}/Task_Network.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o: Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o Microchip/TCPIP\ Stack/TCP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o Microchip/TCPIP\ Stack/TCP.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/TCP.o.ok; else exit 1; fi
	
${OBJECTDIR}/Task_DebugUART.o: Task_DebugUART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Task_DebugUART.o.d 
	@${RM} ${OBJECTDIR}/Task_DebugUART.o.ok ${OBJECTDIR}/Task_DebugUART.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_DebugUART.o.d -o ${OBJECTDIR}/Task_DebugUART.o Task_DebugUART.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Task_DebugUART.o.d -o ${OBJECTDIR}/Task_DebugUART.o Task_DebugUART.c   2>&1  > ${OBJECTDIR}/Task_DebugUART.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Task_DebugUART.o.ok ; fi 
	@touch ${OBJECTDIR}/Task_DebugUART.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Task_DebugUART.o.d > ${OBJECTDIR}/Task_DebugUART.o.tmp
	@${RM} ${OBJECTDIR}/Task_DebugUART.o.d 
	@${CP} ${OBJECTDIR}/Task_DebugUART.o.tmp ${OBJECTDIR}/Task_DebugUART.o.d 
	@${RM} ${OBJECTDIR}/Task_DebugUART.o.tmp
endif
	@touch ${OBJECTDIR}/Task_DebugUART.o.err 
	@cat ${OBJECTDIR}/Task_DebugUART.o.err 
	@if [ -f ${OBJECTDIR}/Task_DebugUART.o.ok ] ; then rm -f ${OBJECTDIR}/Task_DebugUART.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o: Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o Microchip/TCPIP\ Stack/LCDBlocking.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o Microchip/TCPIP\ Stack/LCDBlocking.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/LCDBlocking.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o: Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.ok; else exit 1; fi
	
${OBJECTDIR}/WF_Config.o: WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/WF_Config.o.ok ${OBJECTDIR}/WF_Config.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/WF_Config.o.d -o ${OBJECTDIR}/WF_Config.o WF_Config.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/WF_Config.o.d -o ${OBJECTDIR}/WF_Config.o WF_Config.c   2>&1  > ${OBJECTDIR}/WF_Config.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/WF_Config.o.ok ; fi 
	@touch ${OBJECTDIR}/WF_Config.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/WF_Config.o.d > ${OBJECTDIR}/WF_Config.o.tmp
	@${RM} ${OBJECTDIR}/WF_Config.o.d 
	@${CP} ${OBJECTDIR}/WF_Config.o.tmp ${OBJECTDIR}/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/WF_Config.o.tmp
endif
	@touch ${OBJECTDIR}/WF_Config.o.err 
	@cat ${OBJECTDIR}/WF_Config.o.err 
	@if [ -f ${OBJECTDIR}/WF_Config.o.ok ] ; then rm -f ${OBJECTDIR}/WF_Config.o.ok; else exit 1; fi
	
${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o: Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/Microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.ok ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o Microchip/TCPIP\ Stack/ARP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DEXPLORER_16_MRF24WB0M -I"FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"FreeRTOS/Source/include" -I"." -I"Microchip/Include" -I"Microchip/Include/TCPIP Stack" -I"." -I"." -I"." -I"." -I"." -I"Hardware" -I"." -Wall -MMD -MF ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d -o ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o Microchip/TCPIP\ Stack/ARP.c   2>&1  > ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.ok ; fi 
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d 
	
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d > ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.tmp
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d 
	@${CP} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.tmp ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.d 
	@${RM} ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.tmp
endif
	@touch ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.err 
	@cat ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.err 
	@if [ -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.ok ] ; then rm -f ${OBJECTDIR}/Microchip/TCPIP\ Stack/ARP.o.ok; else exit 1; fi
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/wifi-car.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/wifi-car.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-L".",-Map="${DISTDIR}/wifi-cat.${IMAGE_TYPE}.map" 
else
dist/${CND_CONF}/${IMAGE_TYPE}/wifi-car.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/wifi-car.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-L".",-Map="${DISTDIR}/wifi-cat.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/wifi-car.${IMAGE_TYPE}.elf  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
