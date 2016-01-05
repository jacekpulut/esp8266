/*
 * LightStatus.cpp
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#include "LightStatus.h"

LightStatus::LightStatus() :
		configuration(String("/lightStatus.cfg")) {
	canOff[0] = configuration.getValue("canOff" + String(D0)) != "false";
	canOff[1] = configuration.getValue("canOff" + String(D1)) != "false";
	canOn[0] = configuration.getValue("canOn" + String(D0)) != "false";
	canOn[1] = configuration.getValue("canOn" + String(D1)) != "false";
}

void LightStatus::begin() {
	configuration.begin();
}

void LightStatus::lock(int pin) {
	configuration.setValue("Lock" + String(pin), "true");
	Storer::store("Lock", "GardenLight" + String(pin));
}

void LightStatus::unLock(int pin, boolean setCans) {
	configuration.setValue("Lock" + String(pin), "false");
	if (setCans) {
		canOn[index(pin)] = true;
		canOff[index(pin)] = true;
	}
	configuration.setValue("canOn" + String(pin),
			canOn[index(pin)] ? "true" : "false");
	configuration.setValue("canOff" + String(pin),
			canOff[index(pin)] ? "true" : "false");
	Storer::store("UnLock", "GardenLight" + String(pin));
}

boolean LightStatus::isLocked(int pin) {
	return configuration.getValue("Lock" + String(pin)) == "true";
}

boolean LightStatus::isOn(int pin) {
	return configuration.getValue(String(pin)).toInt() == LOW;
}
void LightStatus::on(int pin) {
	configuration.setValue(String(pin), String(LOW));
	Storer::store("ON", "GardenLight" + String(pin));
}
void LightStatus::off(int pin) {
	configuration.setValue(String(pin), String(HIGH));
	Storer::store("OFF", "GardenLight" + String(pin));
}
boolean LightStatus::getCanOn(short pin) {
	return canOn[index(pin)];
}
boolean LightStatus::getCanOff(short pin) {
	return canOff[index(pin)];
}
void LightStatus::setCanOn(short pin, boolean val) {
	canOn[index(pin)] = val;
	canOff[index(pin)] = !val;
	configuration.setValue("canOn" + String(pin),
			canOn[index(pin)] ? "true" : "false");
	configuration.setValue("canOff" + String(pin),
			canOff[index(pin)] ? "true" : "false");
}
void LightStatus::setCanOff(short pin, boolean val) {
	canOff[index(pin)] = val;
	canOn[index(pin)] = !val;
	configuration.setValue("canOn" + String(pin),
			canOn[index(pin)] ? "true" : "false");
	configuration.setValue("canOff" + String(pin),
			canOff[index(pin)] ? "true" : "false");
}
