/*
 * CMainMenu.h
 *
 *  Created on: 10 sty 2016
 *      Author: User
 */

#ifndef CMAINMENU_H_
#define CMAINMENU_H_

#include <CCaculator.h>
#include "CTimer.h"
#include <CComm.h>
#include <CDriver.h>
#include <staticConst.h>

class CMainMenu {
public:

	static void init();
	static void run();

protected:

	static CTimer updateTimer;

private:


};

#endif /* CMAINMENU_H_ */
