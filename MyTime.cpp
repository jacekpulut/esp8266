/*
 * MyTime.cpp
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#include "MyTime.h"

String MyTime::fetchResponseFrom(const char* host, const char* url) {
	HTTPClient http;
	http.begin(host, 80, url);
	int httpCode = http.GET();
	if (httpCode) {
		// HTTP header has been send and Server response header has been handled
		Serial.printf("[HTTP] GET... code: %d\n", httpCode);
		// file found at server
		if (httpCode == 200) {
			String payload = http.getString();
			int ind1 = payload.indexOf('{');
			if (ind1 < 0) {
				Serial.println("Cannot find first '{'");
				return "";
			}
			int ind2 = payload.lastIndexOf('}');
			if (ind2 < 0) {
				Serial.println("Cannot find last '}'");
				return "";
			}
			String json = payload.substring(ind1, ind2 + 1);
			return json;
		}
	} else {
		Serial.printf(
				"[HTTP] GET... failed, no connection or no HTTP server\n");
	}
	return "";
}

time_t MyTime::iso8601ToEpoch(String cb) {
	tmElements_t t;
	int ind = cb.indexOf('-');
	if (ind == -1) {
		return false;
	}
	t.Year = cb.substring(0, ind).toInt() - 1970;

	int prevInd = ind + 1;
	ind = cb.indexOf('-', prevInd);
	if (ind == -1) {
		return false;
	}
	t.Month = cb.substring(prevInd, ind).toInt();
	prevInd = ind + 1;
	ind = cb.indexOf('T');
	if (ind == -1) {
		return false;
	}
	t.Day = cb.substring(prevInd, ind).toInt();

	prevInd = ind + 1;
	ind = cb.indexOf(':', prevInd);
	if (ind == -1) {
		return false;
	}
	t.Hour = cb.substring(prevInd, ind).toInt();

	prevInd = ind + 1;
	ind = cb.indexOf(':', prevInd);
	if (ind == -1) {
		return false;
	}
	t.Minute = cb.substring(prevInd, ind).toInt();

	prevInd = ind + 1;
	ind = cb.indexOf(':', prevInd);
	if (ind == -1) {
		return false;
	}
	t.Second = cb.substring(prevInd, ind).toInt();

	return makeTime(t);
}

MyTime::MyTime() {
	civil_begin = 0;
	civil_end = 0;
	current_t = 0;
	boot_t = 0;
	gmtOffset = 0;
	pGCurrent = NULL;
}

void MyTime::adjustTimer(time_t gc, time_t c) {
	if (gc > 1)
		*pGAdjustment = float(c)/float(gc)  -  1.;
	Serial.printf("gc: %ld, c: %ld, adj: %s\n",gc, c, String(*pGAdjustment).c_str());
}

void MyTime::begin(volatile time_t *gC, float *gA) {
	pGCurrent = gC;
	pGAdjustment = gA;
	while (!fetchGmtOffset() || !fetchSunTime()) {
		delay(1000);
	}
	setBoot();
}
