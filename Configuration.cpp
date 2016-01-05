/*
 * Configuration.cpp
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#include "Configuration.h"

String Configuration::getFileName() {
	return fileName;
}
int const Configuration::computeLines() {
	int lines = 0;
	File f = SPIFFS.open(fileName, "r");
	if (f) {
		while (f.available()) {
			f.readStringUntil('\n');
			++lines;
		}
	}
	f.close();
	return lines;
}
Configuration::~Configuration() {
	if (properties)
		delete[] properties;
}
void Configuration::begin() {
	size = computeLines();
	Serial.printf("size: %d\n", size);
	if (size > 0) {
		properties = new pair[size];
		File f = SPIFFS.open(fileName, "r");
		if (f) {
			for (int i = 0; i < size; i++) {
				String line = f.readStringUntil('\n');
				int ind = line.indexOf('=');

				if (ind != -1) {
					properties[i].key = line.substring(0, ind);
					properties[i].key.trim();
					properties[i].value = line.substring(ind + 1);
					properties[i].value.trim();
					Serial.printf("read from file: |%s=%s|\n",
							properties[i].key.c_str(),
							properties[i].value.c_str());
				}
			}
			f.close();
		}
	}
}
Configuration::Configuration(String fName) {
	fileName = fName;
	properties = NULL;
}
boolean Configuration::setValue(String key, String value) {
	int index = findIndex(key);
	if (index == -1) {
		pair *prop_old = properties;
		properties = new pair[size + 1];
		for (int i = 0; i < size; i++) {
			properties[i] = prop_old[i];
		}
		if (prop_old)
			delete[] prop_old;
		size++;
		index = size - 1;
		properties[index].key = key;
	}
	properties[index].value = value;
	return storeFile();
}
boolean Configuration::storeFile() {
	File f = SPIFFS.open(fileName, "w");
	if (f) {
		for (int i = 0; i < size; i++) {
			String str = properties[i].key;
			str += "=";
			str += properties[i].value;
			f.println(str);
			Serial.println(str);
		}
		f.close();
		return true;
	}
	return false;
}
int Configuration::findIndex(String key) {
	for (int i = 0; i < size; i++) {
		if (key == properties[i].key)
			return i;
	}
	return -1;
}
String Configuration::getValue(String key) {
	int index = findIndex(key);
	if (index == -1)
		return "";
	return properties[index].value;
}
