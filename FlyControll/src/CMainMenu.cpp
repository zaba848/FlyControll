/*
 * CMainMenu.cpp
 *
 *  Created on: 10 sty 2016
 *      Author: User
 */


#include <CMainMenu.h>

CTimers CMainMenu::updateTimer;

void CMainMenu::init()
{
//	CTimer::initCTimer();
	CComm::init();
	CDriver::init();
	updateTimer.reconfigure(COMMUNICATION_DELAY, CTimers::CT_DCS);


}

void CMainMenu::run()
{

	while(1)
	{
		CTimers::timerTick();
		updateTimer.update();
		CComm::update();

		if(updateTimer.timeUp())
		{
			CCaculator::update();
		}

	}

}
