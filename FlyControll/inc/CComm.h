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
#include <staticConst.h>
#include <CTimers.h>
#include <usart.h>
#include <CCaculator.h>


class CComm {
public:

	static void init();
	static void update();


protected:

	static 	char printBuffer[20];
	static int8_t printBufferUint[20];

	static CTimers communicationTimer;
	static CTimers sendDelay;



};

#endif /* CCOMM_H_ */
