// Do not remove the include below
#include "Main.h"

Ticker seconder;
void ICACHE_FLASH_ATTR increaseTimeOneSec() {
	gCurrent_t += long(1. + gAdjustemnt);
	setTime(gCurrent_t);
}
//The setup function is called once at startup of the sketch
GardenLight gl;
void setup() {
// Add your initialization code here
	Serial.begin(115200);
	delay(100);
	gAdjustemnt = 0;

	if (!SPIFFS.begin()) {
		while (true)
			Serial.println("Could not begin spiffs");
	}
	Dir dir = SPIFFS.openDir("/");
	while (dir.next()) {
		Serial.print(dir.fileName());
		File f = dir.openFile("r");
		Serial.println(" - " + String(f.size()));
		Serial.println("");
		//SPIFFS.remove(dir.fileName());
	}

	gl.begin(&gCurrent_t, &gAdjustemnt);
	seconder.attach(1, increaseTimeOneSec);
}

// The loop function is called in an endless loop
void loop() {
//Add your repeated code here

	gl.loop();
	delay(100);
}
