/*
 * Storer.cpp
 *
 *  Created on: Dec 26, 2015
 *      Author: root
 */

#include "Storer.h"

void Storer::store(String value, String channel) {
	String url = "/store.php?channel=" + channel + "&value=" + value;
	HTTPClient http;
	http.begin("skotnicka116.pl", 80, url);
	int httpCode = http.GET();
	if (httpCode) {
		// HTTP header has been send and Server response header has been handled
		Serial.printf("%s [HTTP] GET... code: %d\n", __FILE__, httpCode);
		// file found at server
		if (httpCode == 200) {
			Serial.println("Stored \"" + channel + "\" with success");
		}
	}
}
