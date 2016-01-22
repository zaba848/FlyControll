/*
 * CComm.cpp
 *
 *  Created on: 6 sty 2016
 *      Author: User
 */

#include <CComm.h>

CTimers CComm::communicationTimer;
CTimers CComm::sendDelay;
char CComm::printBuffer[];
int8_t CComm::printBufferUint[];


void CComm::init() {

	communicationTimer.reconfigure(COMMUNICATION_DELAY, CTimers::CT_DCS);
	sendDelay.reconfigure(5, CTimers::CT_MS);

}

void CComm::update()
{
	communicationTimer.update();
	sendDelay.update();
	if(communicationTimer.timeUp())
	{

//		printBufferUint[0] = 127;	//	X
//		printBufferUint[1] = (uint8_t)CCaculator::getRoll();
		sprintf(printBuffer,"%.2f;%.2f\n", CCaculator::getRoll(), CCaculator::getPich());
//		sendInt(printBuffer);
		send(printBuffer);



//		if(sendDelay.timeUp())
//		{
////		printBufferUint[0] = 126;	// Y
////		printBufferUint[1] = (uint8_t)CCaculator::getPich();
////			sprintf(printBuffer,"X%d\n", CCaculator::getPich());
////
////			send(printBuffer);
//
//		}
	}
}



