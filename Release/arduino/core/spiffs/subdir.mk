################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266/spiffs/spiffs_cache.c \
/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266/spiffs/spiffs_check.c \
/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266/spiffs/spiffs_gc.c \
/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266/spiffs/spiffs_hydrogen.c \
/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266/spiffs/spiffs_nucleus.c 

C_DEPS += \
./arduino/spiffs_cache.c.d \
./arduino/spiffs_check.c.d \
./arduino/spiffs_gc.c.d \
./arduino/spiffs_hydrogen.c.d \
./arduino/spiffs_nucleus.c.d 

AR_OBJ += \
./arduino/spiffs_cache.c.o \
./arduino/spiffs_check.c.o \
./arduino/spiffs_gc.c.o \
./arduino/spiffs_hydrogen.c.o \
./arduino/spiffs_nucleus.c.o 


# Each subdirectory must supply rules for building sources it contributes
arduino/spiffs_cache.c.o: /root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266/spiffs/spiffs_cache.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/spiffs_check.c.o: /root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266/spiffs/spiffs_check.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/spiffs_gc.c.o: /root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266/spiffs/spiffs_gc.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/spiffs_hydrogen.c.o: /root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266/spiffs/spiffs_hydrogen.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

arduino/spiffs_nucleus.c.o: /root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266/spiffs/spiffs_nucleus.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-I/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L -DARDUINO=10605 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/cores/esp8266" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/variants/nodemcu" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/DHT" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266HTTPClient/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WiFi/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/ESP8266WebServer/src" -I"/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/libraries/Ticker" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


