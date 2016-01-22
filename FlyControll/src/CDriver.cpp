/*
 * CDriver.cpp
 *
 *  Created on: 10 sty 2016
 *      Author: User
 */

#include <CDriver.h>
//#include <cstdint>

ACCELERO_DrvTypeDef* CDriver::AccelerometerDrv;
MAGNETO_DrvTypeDef*  CDriver::MagnetoDrv;
int16_t CDriver::accelerometr[] = {0,0,0};
int16_t CDriver::Magneto[] = {0,0,0};
int16_t CDriver::test;

void CDriver::init()
 {
	uint16_t ctrl = 0x0000;
	ACCELERO_InitTypeDef LSM303C_InitStructure;
	ACCELERO_FilterConfigTypeDef LSM303C_FilterStructure;
	MAGNETO_InitTypeDef LSM303C_InitStructureMag;

	if (Lsm303cDrv_accelero.ReadID() != LMS303C_ACC_ID) {
	} else {

		AccelerometerDrv = &Lsm303cDrv_accelero;


		LSM303C_InitStructure.AccOutput_DataRate = LSM303C_ACC_ODR_50_HZ;
		LSM303C_InitStructure.Axes_Enable = LSM303C_ACC_AXES_ENABLE;
		LSM303C_InitStructure.AccFull_Scale = LSM303C_ACC_FULLSCALE_2G;
		LSM303C_InitStructure.BlockData_Update = LSM303C_ACC_BDU_CONTINUOUS;
		LSM303C_InitStructure.High_Resolution = LSM303C_ACC_HR_DISABLE;
		LSM303C_InitStructure.Communication_Mode = LSM303C_ACC_SPI_MODE;


		ctrl = (LSM303C_InitStructure.High_Resolution
				| LSM303C_InitStructure.AccOutput_DataRate
				| LSM303C_InitStructure.Axes_Enable
				| LSM303C_InitStructure.BlockData_Update);

		ctrl |= (LSM303C_InitStructure.AccFull_Scale
				| LSM303C_InitStructure.Communication_Mode) << 8;


		AccelerometerDrv->Init(ctrl);


		LSM303C_FilterStructure.HighPassFilter_Mode_Selection =
				LSM303C_ACC_HPM_NORMAL_MODE;
		LSM303C_FilterStructure.HighPassFilter_CutOff_Frequency =
				LSM303C_ACC_DFC1_ODRDIV50;
		LSM303C_FilterStructure.HighPassFilter_Stat =
				LSM303C_ACC_HPI2S_INT1_DISABLE | LSM303C_ACC_HPI2S_INT2_DISABLE;


		ctrl = (uint8_t) (LSM303C_FilterStructure.HighPassFilter_Mode_Selection
				|\
 LSM303C_FilterStructure.HighPassFilter_CutOff_Frequency
				|\
 LSM303C_FilterStructure.HighPassFilter_Stat);


		AccelerometerDrv->FilterConfig(ctrl);
	}

	if (Lsm303cDrv_magneto.ReadID() != LMS303C_MAG_ID) {
	} else {

		MagnetoDrv = &Lsm303cDrv_magneto;



		LSM303C_InitStructureMag.Register1 = LSM303C_MAG_TEMPSENSOR_DISABLE
				| LSM303C_MAG_OM_XY_ULTRAHIGH | LSM303C_MAG_ODR_40_HZ;
		LSM303C_InitStructureMag.Register2 = LSM303C_MAG_FS_16_GA
				| LSM303C_MAG_REBOOT_DEFAULT | LSM303C_MAG_SOFT_RESET_DEFAULT;
		LSM303C_InitStructureMag.Register3 = LSM303C_MAG_SPI_MODE
				| LSM303C_MAG_CONFIG_NORMAL_MODE | LSM303C_MAG_CONTINUOUS_MODE;
		LSM303C_InitStructureMag.Register4 = LSM303C_MAG_OM_Z_ULTRAHIGH
				| LSM303C_MAG_BLE_LSB;
		LSM303C_InitStructureMag.Register5 = LSM303C_MAG_BDU_CONTINUOUS;

		MagnetoDrv->Init(LSM303C_InitStructureMag);
	}

}
void CDriver::update()
{
	  if(AccelerometerDrv != NULL)
	  {
	    if(AccelerometerDrv->GetXYZ != NULL)
	    {
	      AccelerometerDrv->GetXYZ(accelerometr);
	    }
	  }
	  if(MagnetoDrv != NULL)
	  {
	    if(MagnetoDrv->GetXYZ != NULL)
	    {
	      MagnetoDrv->GetXYZ(Magneto);
	    }
	  }
}

int16_t CDriver::getAccX()
{
	return accelerometr[0];
}
int16_t CDriver::getAccY()
{
	return accelerometr[1];
}
int16_t CDriver::getAccZ()
{
	return accelerometr[2];
}

int16_t CDriver::getMagX()
{
	return Magneto[0];
}
int16_t CDriver::getMagY()
{
	return Magneto[1];
}
int16_t CDriver::getMagZ()
{
	return Magneto[2];
}

