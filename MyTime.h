/*
 * MyTime.h
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#ifndef MYTIME_H_
#define MYTIME_H_

#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <Ticker.h>
#include "Time.h"
#include "JSON.h"

class MyTime {
private:
	int gmtOffset;
	int dst = 0;
	time_t current_t;
	time_t civil_begin;
	time_t civil_end;
	boolean gmtOffsetIsSet = false;
	time_t boot_t;
	int storePeriod = 60;
	int fetchPeriod = 600;
	volatile time_t *pGCurrent;
	float * pGAdjustment;

	const char * urlTimeZone =
			"/?lat=50.0141587&lng=19.874124&key=DLH7KSN8N0IK&format=json";
	const char * hostTimeZone = "api.timezonedb.com";
	const char * urlSunTime = "/json?lat=50.0141587&lng=19.874124&formatted=0";
	const char * hostSunTime = "api.sunrise-sunset.org";

	String fetchResponseFrom(const char * host, const char * url);
	long strToLong(String str) {
		char buff[str.length() + 1];
		str.toCharArray(buff, str.length() + 1);
		return strtol(buff, NULL, 0);
	}
	time_t iso8601ToEpoch(String cb);
	void setGmtOffset(int off) {
		gmtOffset = off;
		gmtOffsetIsSet = true;
	}
	void setBoot() {
		boot_t = current_t;
		Serial.printf("setting boot: %ld\n", boot_t);
	}
	void adjustTimer(time_t gc, time_t c);
public:
	int getStorePeriod() {
		return storePeriod;
	}
	int getFetchPeriod() {
		return fetchPeriod;
	}
	MyTime();
	time_t uptime() {
		return current_t - boot_t;
	}
	String epochToTime(time_t t) {
		tmElements_t te;
		breakTime(t, te);

		String ret = "";
		ret += te.Day;
		ret += ".";
		ret += te.Month;
		ret += ".";
		ret += tmYearToCalendar(te.Year);
		ret += " ";
		ret += te.Hour;
		ret += ".";
		ret += te.Minute;
		ret += ".";
		ret += te.Second;
		return ret;
	}

	int getGmtOffset() {
		return gmtOffset;
	}
	void setCurrent(time_t c, boolean adjust = false) {
		if (adjust)
			adjustTimer(*pGCurrent, c);
		*pGCurrent = c;
		current_t = c;
		setTime(current_t);
	}
	time_t getCurrent() {
		return now();
	}
	time_t getCivilBegin() {
		return civil_begin;
	}
	time_t getCivilEnd() {
		return civil_end;
	}

	boolean fetchGmtOffset() {
		String json = fetchResponseFrom(hostTimeZone, urlTimeZone);
		if (json.length() > 0) {
			JSON j(json);
			String str = j.getAttributeFromJson("status");
			if (str == "OK") {
				long off = strToLong(j.getAttributeFromJson("gmtOffset"));
				Serial.printf("setting offset: %ld\n", off);
				setGmtOffset(off);

				long timestamp = strToLong(j.getAttributeFromJson("timestamp"));
				Serial.printf("setting time: %ld\n", timestamp);
				setCurrent(timestamp, true);
				dst = j.getAttributeFromJson("dst").toInt();
				Serial.printf("dst is: %d\n", dst);

				return true;
			}
		} else {
			Serial.print("Cannot parse json: ");
			Serial.println(json);
		}
		return false;
	}

	boolean fetchSunTime() {
		if (!gmtOffsetIsSet) {
			return false;
		}
		String json = fetchResponseFrom(hostSunTime, urlSunTime);
		if (json.length() > 0) {
			JSON j(json);
			String status = j.getAttributeFromJson("status");
			Serial.printf("status: %s\n", status.c_str());
			if (status == "OK") {
				String cb = j.getAttributeFromJson("civil_twilight_begin");
				Serial.print("civil_twilight_begin: ");
				Serial.println(cb);

				civil_begin = iso8601ToEpoch(cb) + gmtOffset + 3600 * dst;

				Serial.printf("civil begin after conversion: %s\n",
						epochToTime(getCivilBegin()).c_str());

				String ce = j.getAttributeFromJson("civil_twilight_end");
				Serial.print("civil_twilight_end: ");
				Serial.println(ce);

				civil_end = iso8601ToEpoch(ce) + gmtOffset + 3600 * dst;
				Serial.printf("civil end after conversion:  %s\n",
						epochToTime(getCivilEnd()).c_str());

				return true;
			} else {
				Serial.print("Cannot parse json: ");
				Serial.println(json);
			}
		}
		return false;
	}
	void begin(volatile time_t *gC, float * gA);
	float getAdjustment(){return *pGAdjustment;}
};

#endif /* MYTIME_H_ */
