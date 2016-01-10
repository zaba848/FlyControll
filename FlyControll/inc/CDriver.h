/*
 * CDriver.h
 *
 *  Created on: 10 sty 2016
 *      Author: User
 */

#ifndef CDRIVER_H_
#define CDRIVER_H_

#include "magneto.h"
#include "accelero.h"
#include "lsm303c.h"


class CDriver {
public:

	static void init();
	static void update();

	static int16_t getAccX();
	static int16_t getAccY();
	static int16_t getAccZ();

	static int16_t getMagX();
	static int16_t getMagY();
	static int16_t getMagZ();

protected:


	static int16_t accelerometr[3];
	static int16_t Magneto[3];

	static int16_t test;

	static ACCELERO_DrvTypeDef *AccelerometerDrv;
	static MAGNETO_DrvTypeDef *MagnetoDrv;
};

#endif /* CDRIVER_H_ */
