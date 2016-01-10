/*
 * CComm.cpp
 *
 *  Created on: 6 sty 2016
 *      Author: User
 */

#include <CComm.h>

CTimer CComm::communicationTimer;
char CComm::printBuffer[];

void CComm::init() {

	communicationTimer.reconfigure(COMMUNICATION_DELAY, CTimer::CT_DCS);
}

void CComm::update()
{
	communicationTimer.update();
	if(communicationTimer.timeUp())
	{
		sprintf(printBuffer,"X%d\n", CCaculator::getPich());
		send(printBuffer);
		sprintf(printBuffer,"Y%d\n", CCaculator::getRoll());
		send(printBuffer);
	}
}



