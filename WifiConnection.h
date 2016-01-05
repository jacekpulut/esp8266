/*
 * WifiConnection.h
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#ifndef WIFICONNECTION_H_
#define WIFICONNECTION_H_
#include <Arduino.h>
#include <ESP8266WiFi.h>

class WifiConnection {
private:
	const char* ssid = "qwertyuiop14";
	const char* password = "PaulinaSzymek";
	//byte mac[] = {  0x5C, 0xCF, 0x7F, 0x0A, 0x7A, 0x23};

public:
	void checkWifiStatus() {
		while (WiFi.status() != WL_CONNECTED) {
			digitalWrite(2, HIGH);
			delay(250);
			digitalWrite(2, LOW);
			delay(250);
			Serial.print(".");
		}
		digitalWrite(2, LOW);
	}

	void setWifiConnection() {
		pinMode(2, OUTPUT);

		// We start by connecting to a WiFi network

		Serial.println();
		Serial.println();
		Serial.print("Connecting to ");
		Serial.println(ssid);

		WiFi.begin(ssid, password);

		digitalWrite(2, LOW);

		checkWifiStatus();

		Serial.println("");
		Serial.println("WiFi connected");
		Serial.println("IP address: ");
		Serial.println(WiFi.localIP());
	}

};

#endif /* WIFICONNECTION_H_ */
