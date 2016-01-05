/*
 * ButtonSwitcher.cpp
 *
 *  Created on: Dec 27, 2015
 *      Author: root
 */

#include "ButtonSwitcher.h"

ButtonSwitcher::ButtonSwitcher(LightStatus *pls) {
	pinMode(buttonPin, INPUT_PULLUP);
	buttonState = lastButtonState = digitalRead(buttonPin);
	ls = pls;
}

ButtonSwitcher::~ButtonSwitcher() {
}

void ButtonSwitcher::checkState() {
	buttonState = digitalRead(buttonPin);
	if (buttonState != lastButtonState) {
		uint8_t val = !digitalRead(lightPin);
		digitalWrite(lightPin, val);
		lastButtonState = buttonState;
		if (val) {
			ls->off(lightPin);
			ls->setCanOn(lightPin, false);
		} else {
			ls->on(lightPin);
			ls->setCanOff(lightPin, false);
		}
		ls->unLock(lightPin, false);
	}
}
