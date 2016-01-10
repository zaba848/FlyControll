/*
 * CMainMenu.cpp
 *
 *  Created on: 10 sty 2016
 *      Author: User
 */

#include <CComm.h>
#include <CMainMenu.h>
#include <CTimer.h>


void CMainMenu::init()
{
	  CTimer::initCTimer();
	CComm::init();

}

void CMainMenu::run()
{
	while(1)
	{
		CTimer::timerTick();

		  CComm::update();


	}

}
