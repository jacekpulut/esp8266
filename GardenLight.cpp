/*
 * GardenLight.cpp
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#include "GardenLight.h"

GardenLight::GardenLight() :
		ws(&myTime, &myDHT, &ls), bs(&ls), pinGardenLight(D0), pinGateLight(D1) {
	gCur = NULL;
	value = 0;
	last_t = 0;
	last2_t = 0;
}

GardenLight::~GardenLight() {
}

void GardenLight::setupPin(short pin) {
	boolean pinStatus = ls.isOn(pin);
	Serial.printf("pin: %d pinStatus %d\nlock status: %d\n", pin, pinStatus,
			ls.isLocked(pin));
	pinMode(pin, OUTPUT);
	digitalWrite(pin, !pinStatus);
}

void GardenLight::begin(volatile time_t * gC, float * gA) {
	gCur = gC;
	myDHT.begin();

	ls.begin();
	setupPin(pinGardenLight);
	setupPin(pinGateLight);
	wc.setWifiConnection();

	myTime.begin(gCur, gA);

	ws.webServerBegin();
	Storer::store("1", "GardenLight.boot");
}

void GardenLight::loop() {
	++value;
	myTime.setCurrent(*gCur);
	ws.checkWebClient();

	checkTime(myTime.getCivilBegin(), myTime.getCivilEnd());

	wc.checkWifiStatus();
	myDHT.update(myTime.getCurrent());

	bs.checkState();

	if (myTime.getCurrent() - last2_t > myTime.getStorePeriod()) {
		Storer::store(String(myDHT.getTemperature()), "GardenLight.temp");
		Storer::store(String(myDHT.getHumidity()), "GardenLight.hum");
		Serial.printf("heap size: %u\n", ESP.getFreeHeap());
		Storer::store(String(ESP.getFreeHeap()), "GardenLight.heap");
		last2_t = myTime.getCurrent();
	}
	if (myTime.getCurrent() - last_t > myTime.getFetchPeriod() || !value) {
		printTime();
		myTime.fetchGmtOffset();
		myTime.fetchSunTime();
		printTime();
		last_t = myTime.getCurrent();
	}
}

void GardenLight::turnOff(short pin) {
	if (ls.getCanOff(pin)) {
		if (!ls.isLocked(pin)) {
			digitalWrite(pin, HIGH);
			Serial.printf("turned off light pin: %d\n", pin);
			ls.off(pin);
		} else {
			Storer::store("cannotOFF", "GardenLight" + String(pin));
		}
		ls.setCanOff(pin, false);
	}
}

void GardenLight::turnOn(short pin) {
	if (ls.getCanOn(pin)) {
		if (!ls.isLocked(pin)) {
			digitalWrite(pin, LOW);
			Serial.printf("turned on light pin: %d", pin);
			ls.on(pin);
		} else {
			Storer::store("cannotON", "GardenLight" + String(pin));
		}
		ls.setCanOn(pin, false);
	}
}

void GardenLight::checkTime(time_t sunrise, time_t sunset) {
	if (!(sunrise * sunset)) {
		Serial.printf("sunrise or sunset time not set!");
		return;
	}
	if (myTime.getCurrent() < sunset && myTime.getCurrent() > sunrise) {
		turnOff(pinGardenLight);
		turnOff(pinGateLight);
	} else if ((myTime.getCurrent() > sunset && myTime.getCurrent() > sunrise)
			|| (myTime.getCurrent() < sunset && myTime.getCurrent() < sunrise)) {
		turnOn(pinGardenLight);
	}
}

void GardenLight::printEpochToUTC(unsigned long epoch) {
	Serial.print((epoch % 86400L) / 3600); // print the hour (86400 equals secs per day)
	Serial.print(':');
	if (((epoch % 3600) / 60) < 10) {
		// In the first 10 minutes of each hour, we'll want a leading '0'
		Serial.print('0');
	}
	Serial.print((epoch % 3600) / 60); // print the minute (3600 equals secs per minute)
	Serial.print(':');
	if ((epoch % 60) < 10) {
		// In the first 10 seconds of each minute, we'll want a leading '0'
		Serial.print('0');
	}
	Serial.println(epoch % 60); // print the second
}

void GardenLight::printTime() {
	Serial.print("Sunset: ");
	printEpochToUTC(myTime.getCivilEnd());
	Serial.print("Sunrise: ");
	printEpochToUTC(myTime.getCivilBegin());
	Serial.print("now: ");
	Serial.println(now());
	printEpochToUTC(now());
	Serial.print("uptime: ");
	printEpochToUTC(myTime.uptime());
}
