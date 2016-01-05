################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src/ESP8266WiFi.cpp \
/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp \
/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src/WiFiClient.cpp \
/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src/WiFiClientSecure.cpp \
/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src/WiFiServer.cpp \
/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src/WiFiUdp.cpp 

CPP_DEPS += \
./Libraries/ESP8266WiFi/src/ESP8266WiFi.cpp.d \
./Libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp.d \
./Libraries/ESP8266WiFi/src/WiFiClient.cpp.d \
./Libraries/ESP8266WiFi/src/WiFiClientSecure.cpp.d \
./Libraries/ESP8266WiFi/src/WiFiServer.cpp.d \
./Libraries/ESP8266WiFi/src/WiFiUdp.cpp.d 

LINK_OBJ += \
./Libraries/ESP8266WiFi/src/ESP8266WiFi.cpp.o \
./Libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp.o \
./Libraries/ESP8266WiFi/src/WiFiClient.cpp.o \
./Libraries/ESP8266WiFi/src/WiFiClientSecure.cpp.o \
./Libraries/ESP8266WiFi/src/WiFiServer.cpp.o \
./Libraries/ESP8266WiFi/src/WiFiUdp.cpp.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/ESP8266WiFi/src/ESP8266WiFi.cpp.o: /root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src/ESP8266WiFi.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp.o: /root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Libraries/ESP8266WiFi/src/WiFiClient.cpp.o: /root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src/WiFiClient.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Libraries/ESP8266WiFi/src/WiFiClientSecure.cpp.o: /root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src/WiFiClientSecure.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Libraries/ESP8266WiFi/src/WiFiServer.cpp.o: /root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src/WiFiServer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Libraries/ESP8266WiFi/src/WiFiUdp.cpp.o: /root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src/WiFiUdp.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


