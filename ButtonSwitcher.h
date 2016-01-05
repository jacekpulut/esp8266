/*
 * ButtonSwitcher.h
 *
 *  Created on: Dec 27, 2015
 *      Author: root
 */

#ifndef BUTTONSWITCHER_H_
#define BUTTONSWITCHER_H_

#include <Arduino.h>
#include "LightStatus.h"

class ButtonSwitcher {
private:
	const short buttonPin = D2;
	const short lightPin = D1;
	int lastButtonState;
	int buttonState;
	LightStatus *ls;
public:
	ButtonSwitcher(LightStatus *pls);
	virtual ~ButtonSwitcher();
	void checkState();
};

#endif /* BUTTONSWITCHER_H_ */
