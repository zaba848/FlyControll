/*
 * CComm.h
 *
 *  Created on: 6 sty 2016
 *      Author: User
 */

#ifndef CCOMM_H_
#define CCOMM_H_

#include <stdint.h>
#include <stdio.h>
#include <CMainMenu.h>


#include <CTimer.h>
//#include <CDriver.h>
#include <usart.h>
#include <stm32l476g_discovery_compass.h>


class CComm {
public:

	static const uint16_t COMMUNICATION_DELAY = 3;
	static const uint8_t DIVIDED_BY	= 1;

	static void init();
	static void update();

protected:

//	static const uint8_t INTERNAL_DELAY = 8;


	static 	char printBuffer[400];
	static CTimer communicationTimer;

};

#endif /* CCOMM_H_ */
