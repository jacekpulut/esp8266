/*
 * GardenLight.h
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#ifndef GARDENLIGHT_H_
#define GARDENLIGHT_H_
#include <Esp.h>
#include "MyDHT.h"
#include "MyTime.h"
#include "WifiConnection.h"
#include "LightStatus.h"
#include "WebServer.h"
#include "Storer.h"
#include "ButtonSwitcher.h"

class GardenLight {
private:
	MyDHT myDHT;
	MyTime myTime;
	WifiConnection wc;
	LightStatus ls;
	WebServer ws;
	ButtonSwitcher bs;
	const short pinGardenLight;
	const short pinGateLight;
	time_t last_t;
	time_t last2_t;
	int value;
	volatile time_t * gCur;

	void setupPin(short pin);
	void turnOn(short pin);
	void turnOff(short pin);

public:
	GardenLight();
	virtual ~GardenLight();
	void begin(volatile time_t * gC, float * gA);
	void loop();
	void checkTime(time_t sunrise, time_t sunset);
	void printEpochToUTC(unsigned long epoch);
	void printTime();
};

#endif /* GARDENLIGHT_H_ */
