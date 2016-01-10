/*
 * CCaculator.h
 *
 *  Created on: 10 sty 2016
 *      Author: User
 */

#ifndef CCACULATOR_H_
#define CCACULATOR_H_

#include <cmath>
#include <stdint.h>
#include <stdio.h>
#include <staticConst.h>
#include <CDriver.h>

class CCaculator {
public:

	static void update();
	static int16_t getPich()	{return accBuffer[0];};
	static int16_t getRoll()	{return accBuffer[1];};


protected:

	static int16_t accBuffer[2];
	static void calculate();

};

#endif /* CCACULATOR_H_ */
