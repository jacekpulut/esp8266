/*
 * MyDHT.cpp
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#include "MyDHT.h"

void MyDHT::update(time_t current) {
	float t = dht.readTemperature();
	if (!isnan(t)) {
		temperature.val = t;
		temperature.t = current;
	}
	float h = dht.readHumidity();
	if (!isnan(h)) {
		humidity.val = h;
		humidity.t = current;
	}
}
