/*
 * JSON.cpp
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#include "JSON.h"

String JSON::getAttributeFromJson(String sname) {
	String attr = "\"" + sname + "\"";
	int ind = json.indexOf(attr);
	if (ind == -1) {
		Serial.printf("Could not find %s\n", attr.c_str());
		return "";
	}
	String found = json.substring(ind);
	int endInd = getMinIndexOf(',', '}', found);
	String str2 = found.substring(found.indexOf(':') + 1, endInd);
	str2.replace("\"", "");
	return str2;
}

int JSON::getMinIndexOf(char one, char two, String str) {
	int x = str.indexOf(one);
	int y = str.indexOf(two);
	return (x * y < 0) ? max(x, y) : min(x, y);
}
