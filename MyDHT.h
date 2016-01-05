/*
 * MyDHT.h
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#ifndef MYDHT_H_
#define MYDHT_H_

#include <DHT.h>

class MyDHT {
private:
	struct pair {
		float val;
		time_t t;
	};
	pair temperature;
	pair humidity;
	DHT dht;
public:
	MyDHT() :
			dht(D7, DHT22) {
	}
	void update(time_t current);
	time_t getTemperatureTime() {
		return temperature.t;
	}
	time_t getHumidityTime() {
		return humidity.t;
	}
	float getTemperature() {
		return temperature.val;
	}
	float getHumidity() {
		return humidity.val;
	}
	void begin() {
		dht.begin();
	}

};

#endif /* MYDHT_H_ */
