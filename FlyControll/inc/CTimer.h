

#ifndef CTIMER_H_
#define CTIMER_H_

#include <stdint.h>
#include <stdio.h>
#include "stm32l4xx_it.h"


class CTimer {
public:

	typedef enum
	{
		CT_MS  = 1,
		CT_DCS = 100,
		CT_SEC = 1000,
		CT_MIN = 60000,
	}CTime;

	CTimer();

	static void initCTimer();
	static void timerTick();
	void reconfigure(uint16_t interupt, CTime unit = CT_SEC, bool setEnable = true);
	void update();
	bool isGoing();
	bool isEnable();
	bool timeUp(bool reset = true);
	void setState(bool isEnable);
	void resetTimer();

protected:

	typedef struct
	{
		uint16_t time;
		uint16_t interupt;
		CTime unit;
		bool isEnable;
		bool timeUp;
	}Timer;

	Timer timer;
	uint16_t interupt;


private:

	static uint32_t tick;
	 uint32_t tickBackup;

};

#endif  CTIMER_H_

