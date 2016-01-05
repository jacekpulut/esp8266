/*
 * WebServer.h
 *
 *  Created on: Dec 24, 2015
 *      Author: root
 */

#ifndef WEBSERVER_H_
#define WEBSERVER_H_

#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>
#include "MyTime.h"
#include "MyDHT.h"
#include "LightStatus.h"

class WebServer {
private:
	WiFiServer server;
	MyTime *myTime;
	MyDHT *myDHT;
	LightStatus *lightStatus;
	const char pinout[13];

	//The lowest output pin we are starting from
	const int outputLowest = 0;
	// Variable declaration
	int outp = 0;

	//const char* nameMap[] = { "Turn On/Off lights", NULL, NULL,"Wifi identificator" };

	boolean printLastCommandOnce = false;
	boolean printButtonMenuOnce = false;
	boolean initialPrint = true;
	String allOn = "";
	String allOff = "";
	boolean reading = false;
#define INPUTS 2
	boolean readInput[INPUTS]; //Create a boolean array for the maximum ammount.
	const String names[INPUTS];
	const int outputQuantity = sizeof(readInput) - outputLowest; //when added to outputLowest result should not exceed 10

public:
	WebServer(MyTime*pmyTime, MyDHT *pmyDHT, LightStatus *pls) :
			server(80), pinout { D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, 9,
					10 }, names { "GardenLight", "GateLight" } {
		myTime = pmyTime;
		lightStatus = pls;
		myDHT = pmyDHT;
	}
	void webServerBegin() {
		// Start the server
		server.begin();
		Serial.println("Server started");
	}

	void checkWebClient() {
		boolean currentLineIsBlank = true;
		boolean sentHeader = false;
		// Check if a client has connected
		WiFiClient client = server.available();
		if (!client) {
			return;
		}

		// Wait until the client sends some data
		while (client.connected()) {
			if (client.available()) {
				if (!sentHeader) {
					// send a standard http response header
					client.println("HTTP/1.1 200 OK");
					client.println("Content-Type: text/html");
					client.println("Connnection: close");
					client.println();
					client.println("<!DOCTYPE HTML>");
					client.println("<head>");

					// add page title
					client.println("<title>Ethernet Switching</title>");
					client.println(
							"<meta name=\"description\" content=\"Ethernet Switching\"/>");

					// add a meta refresh tag, so the browser pulls again every 5 seconds:
					client.println(
							"<meta http-equiv=\"refresh\" content=\"60; url=/\">");

					// add other browser configuration
					client.println(
							"<meta name=\"apple-mobile-web-app-capable\" content=\"yes\">");
					client.println(
							"<meta name=\"apple-mobile-web-app-status-bar-style\" content=\"default\">");
					client.println(
							"<meta name=\"viewport\" content=\"width=device-width, user-scalable=no\"/>");

					//inserting the styles data, usually found in CSS files.
					client.println("<style type=\"text/css\">");
					client.println("");

					//This will set how the page will look graphically
					client.println("html { height:100%; }");

					client.println("  body {");
					client.println("    height: 100%;");
					client.println("    margin: 0;");
					client.println("    font-family: helvetica, sans-serif;");
					client.println("    -webkit-text-size-adjust: none;");
					client.println("   }");
					client.println("");
					client.println("body {");
					client.println("    -webkit-background-size: 100% 21px;");
					client.println("    background-color: #c5ccd3;");
					client.println("    background-image:");
					client.println(
							"    -webkit-gradient(linear, left top, right top,");
					client.println("    color-stop(.75, transparent),");
					client.println(
							"    color-stop(.75, rgba(255,255,255,.1)) );");
					client.println("    -webkit-background-size: 7px;");
					client.println("   }");
					client.println("");
					client.println(".view {");
					client.println("    min-height: 100%;");
					client.println("    overflow: auto;");
					client.println("   }");
					client.println("");
					client.println(".header-wrapper {");
					client.println("    height: 44px;");
					client.println("    font-weight: bold;");
					client.println(
							"    text-shadow: rgba(0,0,0,0.7) 0 -1px 0;");
					client.println(
							"    border-top: solid 1px rgba(255,255,255,0.6);");
					client.println(
							"    border-bottom: solid 1px rgba(0,0,0,0.6);");
					client.println("    color: #fff;");
					client.println("    background-color: #8195af;");
					client.println("    background-image:");
					client.println(
							"    -webkit-gradient(linear, left top, left bottom,");
					client.println("    from(rgba(255,255,255,.4)),");
					client.println("    to(rgba(255,255,255,.05)) ),");
					client.println(
							"    -webkit-gradient(linear, left top, left bottom,");
					client.println("    from(transparent),");
					client.println("    to(rgba(0,0,64,.1)) );");
					client.println("    background-repeat: no-repeat;");
					client.println(
							"    background-position: top left, bottom left;");
					client.println(
							"    -webkit-background-size: 100% 21px, 100% 22px;");
					client.println("    -webkit-box-sizing: border-box;");
					client.println("   }");
					client.println("");
					client.println(".header-wrapper h1 {");
					client.println("    text-align: center;");
					client.println("    font-size: 20px;");
					client.println("    line-height: 44px;");
					client.println("    margin: 0;");
					client.println("   }");
					client.println("");
					client.println(".group-wrapper {");
					client.println("    margin: 9px;");
					client.println("    }");
					client.println("");
					client.println(".group-wrapper h2 {");
					client.println("    color: #4c566c;");
					client.println("    font-size: 17px;");
					client.println("    line-height: 0.8;");
					client.println("    font-weight: bold;");
					client.println("    text-shadow: #fff 0 1px 0;");
					client.println("    margin: 20px 10px 12px;");
					client.println("   }");
					client.println("");
					client.println(".group-wrapper h3 {");
					client.println("    color: #4c566c;");
					client.println("    font-size: 12px;");
					client.println("    line-height: 1;");
					client.println("    font-weight: bold;");
					client.println("    text-shadow: #fff 0 1px 0;");
					client.println("    margin: 20px 10px 12px;");
					client.println("   }");
					client.println("");
					client.println(".group-wrapper table {");
					client.println("    background-color: #fff;");
					client.println("    -webkit-border-radius: 10px;");

					client.println("    -moz-border-radius: 10px;");
					client.println("    -khtml-border-radius: 10px;");
					client.println("    border-radius: 10px;");

					client.println("    font-size: 17px;");
					client.println("    line-height: 20px;");
					client.println("    margin: 9px 0 20px;");
					client.println("    border: solid 1px #a9abae;");
					client.println("    padding: 11px 3px 12px 3px;");
					client.println("    margin-left:auto;");
					client.println("    margin-right:auto;");

					client.println("    -moz-transform :scale(1);"); //Code for Mozilla Firefox
					client.println("    -moz-transform-origin: 0 0;");

					client.println("   }");
					client.println("");

					//how the green (ON) LED will look
					client.println(".green-circle {");
					client.println("    display: block;");
					client.println("    height: 23px;");
					client.println("    width: 23px;");
					client.println("    background-color: #0f0;");
					//client.println("    background-color: rgba(60, 132, 198, 0.8);");
					client.println("    -moz-border-radius: 11px;");
					client.println("    -webkit-border-radius: 11px;");
					client.println("    -khtml-border-radius: 11px;");
					client.println("    border-radius: 11px;");
					client.println("    margin-left: 1px;");

					client.println(
							"    background-image: -webkit-gradient(linear, 0% 0%, 0% 90%, from(rgba(46, 184, 0, 0.8)), to(rgba(148, 255, 112, .9)));@");
					client.println("    border: 2px solid #ccc;");
					client.println(
							"    -webkit-box-shadow: rgba(11, 140, 27, 0.5) 0px 10px 16px;");
					client.println(
							"    -moz-box-shadow: rgba(11, 140, 27, 0.5) 0px 10px 16px; /* FF 3.5+ */");
					client.println(
							"    box-shadow: rgba(11, 140, 27, 0.5) 0px 10px 16px; /* FF 3.5+ */");

					client.println("    }");
					client.println("");

					//how the black (off)LED will look
					client.println(".black-circle {");
					client.println("    display: block;");
					client.println("    height: 23px;");
					client.println("    width: 23px;");
					client.println("    background-color: #040;");
					client.println("    -moz-border-radius: 11px;");
					client.println("    -webkit-border-radius: 11px;");
					client.println("    -khtml-border-radius: 11px;");
					client.println("    border-radius: 11px;");
					client.println("    margin-left: 1px;");
					client.println(
							"    -webkit-box-shadow: rgba(11, 140, 27, 0.5) 0px 10px 16px;");
					client.println(
							"    -moz-box-shadow: rgba(11, 140, 27, 0.5) 0px 10px 16px; /* FF 3.5+ */");
					client.println(
							"    box-shadow: rgba(11, 140, 27, 0.5) 0px 10px 16px; /* FF 3.5+ */");
					client.println("    }");
					client.println("");

					//this will add the glare to both of the LEDs
					client.println("   .glare {");
					client.println("      position: relative;");
					client.println("      top: 1;");
					client.println("      left: 5px;");
					client.println("      -webkit-border-radius: 10px;");
					client.println("      -moz-border-radius: 10px;");
					client.println("      -khtml-border-radius: 10px;");
					client.println("      border-radius: 10px;");
					client.println("      height: 1px;");
					client.println("      width: 13px;");
					client.println("      padding: 5px 0;");
					client.println(
							"      background-color: rgba(200, 200, 200, 0.25);");
					client.println(
							"      background-image: -webkit-gradient(linear, 0% 0%, 0% 95%, from(rgba(255, 255, 255, 0.7)), to(rgba(255, 255, 255, 0)));");
					client.println("    }");
					client.println("");

					//and finally this is the end of the style data and header
					client.println("</style>");
					client.println("</head>");

					//now printing the page itself
					client.println("<body>");
					client.println("<div class=\"view\">");
					client.println("    <div class=\"header-wrapper\">");
					client.println("      <h1>Ethernet Switching</h1>");
					client.println("    </div>");
					client.println("<div  class=\"group-wrapper\">");
					client.println("    <h2>Switch the required output.</h2>");
					client.print("<h3>Uptime: ");
					client.print(myTime->epochToTime(myTime->uptime()));
					client.println("</h3>");
					client.println("<h3> Current time: ");
					client.print(myTime->epochToTime(myTime->getCurrent()));
					client.println("</h3>");
					client.println("<h3> Today's civil sunrise: ");
					client.print(myTime->epochToTime(myTime->getCivilBegin()));
					client.println("</h3>");
					client.println("<h3> Today's civil sunset: ");
					client.print(myTime->epochToTime(myTime->getCivilEnd()));
					client.println("</h3>");
					client.print("<h3> Current temperature: ");
					client.print(myDHT->getTemperature());
					client.printf(" (%s)",
							myTime->epochToTime(myDHT->getTemperatureTime()).c_str());
					client.println("</h3>");
					client.print("<h3> Current humidity: ");
					client.print(myDHT->getHumidity());
					client.printf(" (%s)",
							myTime->epochToTime(myDHT->getHumidityTime()).c_str());
					client.println("</h3>");
					client.printf("<h4>adjustment: %s</h4>",
							String(myTime->getAdjustment()).c_str());
					client.println();

					//This is for the arduino to construct the page on the fly.
					sentHeader = true;
				}
				char c = client.read();

				if (reading && c == ' ') {
					reading = false;
				}
				if (c == '?') {
					reading = true; //found the ?, begin reading the info
				} else if (reading) {
					if (c == 'H') {
						outp = 1;
					} else if (c == 'L') {
						outp = 0;
					} else if (c == 'K') {
						outp = -1;
					} else if (c == 'U') {
						outp = -2;
					} else {
						Serial.print(c); //print the value of c to serial communication
						triggerPin(pinout[c - '0'], client, outp);
					}

				}
				if (c == '\n' && currentLineIsBlank) {
					printLastCommandOnce = true;
					printButtonMenuOnce = true;
					triggerPin(777, client, outp); //Call to read input and print menu. 777 is used not to update any outputs
					break;
				}
			}
		}

		//Set Variables Before Exiting
		printLastCommandOnce = false;
		printButtonMenuOnce = false;

		allOn = "";
		allOff = "";
		client.println("</div>\n</div>\n</body>\n</html>");

		delay(1); // give the web browser time to receive the data
		client.stop(); // close the connection:

	}

	void triggerPin(int pin, WiFiClient client, int outp) {
		//Switching on or off outputs, reads the outputs and prints the buttons

		//Setting Outputs
		if (pin != 777) {
			if (outp == 1) {
				digitalWrite(pin, HIGH);
				lightStatus->off(pin);
			} else if (outp == 0) {
				digitalWrite(pin, LOW);
				lightStatus->on(pin);
			} else if (outp == -1) {
				lightStatus->lock(pin);
			} else if (outp == -2) {
				lightStatus->unLock(pin);
			}
		}
		//Refresh the reading of outputs
		readOutputStatuses();

		//Prints the buttons
		if (printButtonMenuOnce == true) {
			printHtmlButtons(client);
			printButtonMenuOnce = false;
		}

	}

	//print the html buttons to switch on/off channels
	void printHtmlButtons(WiFiClient client) {

		//Start to create the html table
		client.println("");
		//client.println("<p>");
		client.println("<FORM>");
		client.println("<table border=\"0\" align=\"center\">");

		//Start printing button by button
		for (int var = outputLowest; var < outputLowest + outputQuantity;
				var++) {

			//set command for all on/off
			allOn += "L";
			allOn += var;
			allOff += "H";
			allOff += var;

			//Print begining of row
			client.print("<tr>\n");

			//prints the lock checkbox
			client.print(
					" <td><INPUT TYPE=\"checkbox\" name=\"lock\" VALUE=\"Lock ");
			client.print(var);
			client.printf(
					"\" onClick='handleClick(this, %d);' %s > Lock GPIO%d </td>\n",
					var, lightStatus->isLocked(pinout[var]) ? "checked" : "",
					var);

			//Prints the ON Buttons
			client.printf(
					" <td><INPUT TYPE=\"button\" VALUE=\"%s ON", names[var].c_str());
			client.print("\" onClick=\"parent.location='/?L");
			client.print(var);
			client.print("'\"></td>\n");

			//Prints the OFF Buttons
			client.printf(
					" <td><INPUT TYPE=\"button\" VALUE=\"%s OFF", names[var].c_str());
			client.print("\" onClick=\"parent.location='/?H");
			client.print(var);
			client.print("'\"></td>\n");

			//Print first part of the Circles or the LEDs
			if (readInput[var] != true) {
				client.print(
						" <td><div class='green-circle'><div class='glare'></div></div></td>\n");
			} else {
				client.print(
						" <td><div class='black-circle'><div class='glare'></div></div></td>\n");
			}

			//Print end of row
			client.print("</tr>\n");
		}

		//Prints the ON All Pins Button
		client.print(
				"<tr>\n<td></td><td><INPUT TYPE=\"button\" VALUE=\"Switch ON All Pins");
		client.print("\" onClick=\"parent.location='/?");
		client.print(allOn);
		client.print("'\"></td>\n");

		//Prints the OFF All Pins Button
		client.print("<td><INPUT TYPE=\"button\" VALUE=\"Switch OFF All Pins");
		client.print("\" onClick=\"parent.location='/?");
		client.print(allOff);
		client.print("'\"></td>\n<td></td>\n</tr>\n");

		//Closing the table and form
		client.println("</table>");
		//client.println("</p>");
		client.printf(
				"<script> function handleClick(cb, pin) { if(cb.checked) parent.location='/?K'+pin; else parent.location='/?U'+pin; } </script>");
		client.println("</FORM>");
	}

	//Reading the Output Statuses
	void readOutputStatuses() {
		for (int var = outputLowest; var < outputLowest + outputQuantity;
				var++) {
			readInput[var] = digitalRead(pinout[var]);
		}
	}

};

#endif /* WEBSERVER_H_ */
