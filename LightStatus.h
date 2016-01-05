/*
 * LightStatus.h
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#ifndef LIGHTSTATUS_H_
#define LIGHTSTATUS_H_

#include <Arduino.h>
#include "Configuration.h"
#include "Storer.h"

class LightStatus {
private:
	boolean canOn[2];
	boolean canOff[2];
	Configuration configuration;
	short index(short pin) {
		return D0 == pin ? 0 : 1;
	}
public:
	LightStatus();
	void begin();
	void lock(int pin);
	void unLock(int pin, boolean setCans = true);
	boolean isLocked(int pin);
	boolean isOn(int pin);
	void on(int pin);
	void off(int pin);
	boolean getCanOn(short pin);
	boolean getCanOff(short pin);
	void setCanOn(short pin, boolean val);
	void setCanOff(short pin, boolean val);
};

#endif /* LIGHTSTATUS_H_ */
