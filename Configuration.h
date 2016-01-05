/*
 * Configuration.h
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#ifndef CONFIGURATION_H_
#define CONFIGURATION_H_

#include <Arduino.h>
#include <FS.h>

class Configuration {
private:
	struct pair {
		String key, value;
	};
	String fileName;
	const int computeLines();
	pair *properties;
	int size = 0;
	int findIndex(String key);
	boolean storeFile();
public:
	void begin();
	Configuration(String fName);
	~Configuration();
	String getValue(String key);
	boolean setValue(String key, String value);
	String getFileName();
};

#endif /* CONFIGURATION_H_ */
