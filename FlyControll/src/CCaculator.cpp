/*
 * CCaculator.cpp
 *
 *  Created on: 10 sty 2016
 *      Author: User
 */

#include <CCaculator.h>


int16_t CCaculator::accBuffer[]= {0,0};


void CCaculator::update()
{
	CDriver::update();
	calculate();
}

void CCaculator::calculate()
{
	accBuffer[0] = (atan2( (CDriver::getAccX() ),(CDriver::getAccZ() ))) * 180 / PI;
	accBuffer[1] = (atan2( (CDriver::getAccY() ),(CDriver::getAccZ() )) )* 180 / PI;


	if (accBuffer[0] >180)
		{
		accBuffer[0] -= 360;
		}
		         if (accBuffer[1] >180)
		        	 accBuffer[1] -= 360;
}
