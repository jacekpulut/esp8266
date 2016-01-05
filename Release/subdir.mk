################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ButtonSwitcher.cpp \
../Configuration.cpp \
../GardenLight.cpp \
../JSON.cpp \
../LightStatus.cpp \
../Main.cpp \
../MyDHT.cpp \
../MyTime.cpp \
../Storer.cpp \
../Time.cpp \
../WebServer.cpp \
../WifiConnection.cpp 

CPP_DEPS += \
./ButtonSwitcher.cpp.d \
./Configuration.cpp.d \
./GardenLight.cpp.d \
./JSON.cpp.d \
./LightStatus.cpp.d \
./Main.cpp.d \
./MyDHT.cpp.d \
./MyTime.cpp.d \
./Storer.cpp.d \
./Time.cpp.d \
./WebServer.cpp.d \
./WifiConnection.cpp.d 

LINK_OBJ += \
./ButtonSwitcher.cpp.o \
./Configuration.cpp.o \
./GardenLight.cpp.o \
./JSON.cpp.o \
./LightStatus.cpp.o \
./Main.cpp.o \
./MyDHT.cpp.o \
./MyTime.cpp.o \
./Storer.cpp.o \
./Time.cpp.o \
./WebServer.cpp.o \
./WifiConnection.cpp.o 


# Each subdirectory must supply rules for building sources it contributes
ButtonSwitcher.cpp.o: ../ButtonSwitcher.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Configuration.cpp.o: ../Configuration.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

GardenLight.cpp.o: ../GardenLight.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

JSON.cpp.o: ../JSON.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

LightStatus.cpp.o: ../LightStatus.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Main.cpp.o: ../Main.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

MyDHT.cpp.o: ../MyDHT.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

MyTime.cpp.o: ../MyTime.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Storer.cpp.o: ../Storer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Time.cpp.o: ../Time.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

WebServer.cpp.o: ../WebServer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

WifiConnection.cpp.o: ../WifiConnection.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


