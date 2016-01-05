################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include arduino/core/spiffs/subdir.mk
-include arduino/core/subdir.mk
-include Libraries/Ticker/subdir.mk
-include Libraries/ESP8266WiFi/src/subdir.mk
-include Libraries/ESP8266WebServer/src/subdir.mk
-include Libraries/ESP8266HTTPClient/src/subdir.mk
-include Libraries/DHT/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
arduino.ar \

ELF += \
GL.elf \

EEP += \
GL.eep \

FLASH_IMAGE += \
GL.bin \


# All Target
all: GL

# Tool invocations
GL: $(FLASH_IMAGE)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-size" -A "/home/jpulut/private/skotnicka116.pl/workspace/GL/Release/GL.elf"
	@echo 'Finished building target: $@'
	@echo ' '

arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-ar" cru  "/home/jpulut/private/skotnicka116.pl/workspace/GL/Release/arduino.ar"   $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

GL.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"/root/.arduino15/packages/esp8266/tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -g -Os -nostdlib -Wl,--no-check-sections -u call_user_start -Wl,-static "-L/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/lib" "-L/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/ld" "-Teagle.flash.4m.ld" -Wl,--gc-sections -Wl,-wrap,system_restart_local -Wl,-wrap,register_chipv6_phy  -o "/home/jpulut/private/skotnicka116.pl/workspace/GL/Release/GL.elf" -Wl,--start-group   $(LINK_OBJ) $(AR)  "/home/jpulut/private/skotnicka116.pl/workspace/GL/Release/arduino.ar" -lm -lgcc -lhal -lphy -lnet80211 -llwip -lwpa -lmain -lpp -lsmartconfig -lwps -lcrypto -laxtls -Wl,--end-group  "-L/home/jpulut/private/skotnicka116.pl/workspace/GL/Release"
	@echo 'Finished building: $@'
	@echo ' '

GL.eep: $(ELF)
	@echo 'Create eeprom image'
	${A.RECIPE.OBJCOPY.EEP.PATTERN}
	@echo 'Finished building: $@'
	@echo ' '

GL.bin: $(EEP)
	@echo 'Create Flash image (ihex format)'
	"/root/.arduino15/packages/esp8266/tools/esptool/0.4.6/esptool" -eo "/root/.arduino15/packages/esp8266/hardware/esp8266/2.0.0/bootloaders/eboot/eboot.elf" -bo "/home/jpulut/private/skotnicka116.pl/workspace/GL/Release/GL.bin" -bm dio -bf 40 -bz 4M -bs .text -bp 4096 -ec -eo "/home/jpulut/private/skotnicka116.pl/workspace/GL/Release/GL.elf" -bs .irom0.text -bs .text -bs .data -bs .rodata -bc -ec
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(AR)$(C_DEPS)$(FLASH_IMAGE)$(EEP)$(CXX_DEPS)$(S_UPPER_DEPS)$(ELF)$(C++_DEPS)$(ASM_DEPS)$(CC_DEPS)$(INO_DEPS)$(AR_OBJ)$(CPP_DEPS)$(PDE_DEPS)$(LINK_OBJ)$(C_UPPER_DEPS)$(SIZEDUMMY) GL
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
