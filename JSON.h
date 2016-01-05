/*
 * JSON.h
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#ifndef JSON_H_
#define JSON_H_
#include <Arduino.h>
class JSON {
private:
	String json;
	int getMinIndexOf(char one, char two, String str);
public:
	JSON(String j) {
		json = j;
	}
	String getAttributeFromJson(String sname);
};

#endif /* JSON_H_ */
