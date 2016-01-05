/*
 * Storer.h
 *
 *  Created on: Dec 26, 2015
 *      Author: root
 */

#ifndef STORER_H_
#define STORER_H_
#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>

class Storer {
public:
	void static store(String value, String channel);
};

#endif /* STORER_H_ */
