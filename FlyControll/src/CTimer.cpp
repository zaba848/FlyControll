



#include <CTimer.h>
#include <stm32l4xx_hal.h>

uint32_t CTimer::tick;

void CTimer::initCTimer()
{
	tick = 0;

}

void CTimer::timerTick()
{
	tick = getTick();
}

CTimer::CTimer() {
	this->timer.isEnable = false;
	this->timer.timeUp	 = true;
	this->timer.unit 	 = CT_MS;
	this->timer.interupt = 0;
	this->interupt		 = 0;
	this->timer.time 	 = 0;
	this->tickBackup	 = 0;


}

void CTimer::reconfigure(uint16_t interupt, CTime unit, bool setEnable)
{
	this->timer.isEnable = setEnable;
	this->timer.unit 	 = unit;
	this->timer.interupt = interupt;
	this->interupt		 = interupt;
	this->timer.time 	 = 0;
	this->tickBackup	 = tick;
	this->timer.timeUp	 = false;


}
void CTimer::update()
 {
	if (this->timer.isEnable && (tick != this->tickBackup))
	{
		this->timer.time++;
		this->tickBackup = tick;
		if ((this->timer.time) >= this->timer.unit)
		{
			this->timer.time = 0;
			if(this->timer.interupt > 0)
			{
				this->timer.interupt--;
			}else
			{
				this->timer.isEnable = false;
				this->timer.timeUp 	 = true;
			}

		}
	}

}
bool CTimer::isGoing()
{
	if((this->timer.interupt == 0 ? false : true) && this->timer.isEnable)
	{
		return true;
	}else
	{
		return false;
	}
}
bool CTimer::isEnable()
{
	return this->timer.isEnable;
}
bool CTimer::timeUp(bool reset)
{
	if(this->timer.timeUp)
	{
		if(reset)
			resetTimer();
		return true;
	}
	return false;
}
void CTimer::setState(bool isEnable)
{
	this->timer.isEnable = isEnable;
}

void CTimer::resetTimer()
{

	this->timer.timeUp   = false;
	this->timer.isEnable = true;
	this->timer.time 	 = 0;
	this->timer.interupt = interupt;
	this->tickBackup	 = tick;

}


