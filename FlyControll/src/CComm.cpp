/*
 * CComm.cpp
 *
 *  Created on: 6 sty 2016
 *      Author: User
 */

#include <CComm.h>

CTimers CComm::communicationTimer;
char CComm::printBuffer[];

void CComm::init() {

	communicationTimer.reconfigure(COMMUNICATION_DELAY, CTimers::CT_DCS);
}

void CComm::update()
{
	communicationTimer.update();
	if(communicationTimer.timeUp())
	{
		sprintf(printBuffer,"Y%d\n", CCaculator::getRoll());
		send(printBuffer);
//		sprintf(printBuffer,"X%d\n", CCaculator::getPich());
		printBuffer[0] = 88;
		printBuffer[1] = (uint8_t)CCaculator::getPich();
//		printBuffer[2] = 13;
		send(printBuffer);
	}
}



