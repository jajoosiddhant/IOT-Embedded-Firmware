################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gpio.c \
../src/i2c.c \
../src/letimer.c 

OBJS += \
./src/gpio.o \
./src/i2c.o \
./src/letimer.o 

C_DEPS += \
./src/gpio.d \
./src/i2c.d \
./src/letimer.d 


# Each subdirectory must supply rules for building sources it contributes
src/gpio.o: ../src/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32BG13P632F512GM48=1' '-D__HEAP_SIZE=0x1200' '-DMESH_LIB_NATIVE=1' '-DHAL_CONFIG=1' '-D__STACK_SIZE=0x1000' -IC:/SiliconLabsnew/soc-btmesh-empty/inc -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//platform/middleware/glib/glib" -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//platform/middleware/glib" -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//platform/middleware/glib/dmd" -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//util/silicon_labs/silabs_core/graphics" -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//hardware/kit/common/drivers" -IC:/soc-btmesh-empty/hardware/kit/common/halconfig/halconfig.h -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\lcdGraphics" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\hardware\kit\common\drivers" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\Device\SiliconLabs\EFR32BG13P\Source\GCC" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\Device\SiliconLabs\EFR32BG13P\Include" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\CMSIS\Include" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emlib\src" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emlib\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\protocol\bluetooth\bt_mesh\src" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\protocol\bluetooth\bt_mesh\inc\common" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\hardware\kit\common\halconfig" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\protocol\bluetooth\bt_mesh\inc\soc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\protocol\bluetooth\bt_mesh\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\hardware\kit\common\bsp" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\Device\SiliconLabs\EFR32BG13P\Source" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\radio\rail_lib\common" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\sleep\src" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\bootloader\api" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\uartdrv\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\sleep\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\hardware\kit\EFR32BG13_BRD4104A\config" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\radio\rail_lib\chip\efr32" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\common\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\halconfig\inc\hal-config" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\src" -O0 -fno-builtin -flto -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"src/gpio.d" -MT"src/gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/i2c.o: ../src/i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32BG13P632F512GM48=1' '-D__HEAP_SIZE=0x1200' '-DMESH_LIB_NATIVE=1' '-DHAL_CONFIG=1' '-D__STACK_SIZE=0x1000' -IC:/SiliconLabsnew/soc-btmesh-empty/inc -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//platform/middleware/glib/glib" -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//platform/middleware/glib" -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//platform/middleware/glib/dmd" -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//util/silicon_labs/silabs_core/graphics" -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//hardware/kit/common/drivers" -IC:/soc-btmesh-empty/hardware/kit/common/halconfig/halconfig.h -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\lcdGraphics" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\hardware\kit\common\drivers" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\Device\SiliconLabs\EFR32BG13P\Source\GCC" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\Device\SiliconLabs\EFR32BG13P\Include" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\CMSIS\Include" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emlib\src" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emlib\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\protocol\bluetooth\bt_mesh\src" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\protocol\bluetooth\bt_mesh\inc\common" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\hardware\kit\common\halconfig" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\protocol\bluetooth\bt_mesh\inc\soc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\protocol\bluetooth\bt_mesh\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\hardware\kit\common\bsp" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\Device\SiliconLabs\EFR32BG13P\Source" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\radio\rail_lib\common" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\sleep\src" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\bootloader\api" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\uartdrv\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\sleep\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\hardware\kit\EFR32BG13_BRD4104A\config" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\radio\rail_lib\chip\efr32" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\common\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\halconfig\inc\hal-config" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\src" -O0 -fno-builtin -flto -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"src/i2c.d" -MT"src/i2c.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/letimer.o: ../src/letimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32BG13P632F512GM48=1' '-D__HEAP_SIZE=0x1200' '-DMESH_LIB_NATIVE=1' '-DHAL_CONFIG=1' '-D__STACK_SIZE=0x1000' -IC:/SiliconLabsnew/soc-btmesh-empty/inc -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//platform/middleware/glib/glib" -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//platform/middleware/glib" -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//platform/middleware/glib/dmd" -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//util/silicon_labs/silabs_core/graphics" -I"C:/SiliconLabsnew/developer/sdks/blemesh/v1.3//hardware/kit/common/drivers" -IC:/soc-btmesh-empty/hardware/kit/common/halconfig/halconfig.h -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\lcdGraphics" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\hardware\kit\common\drivers" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\Device\SiliconLabs\EFR32BG13P\Source\GCC" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\Device\SiliconLabs\EFR32BG13P\Include" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\CMSIS\Include" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emlib\src" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emlib\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\protocol\bluetooth\bt_mesh\src" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\protocol\bluetooth\bt_mesh\inc\common" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\hardware\kit\common\halconfig" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\protocol\bluetooth\bt_mesh\inc\soc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\protocol\bluetooth\bt_mesh\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\hardware\kit\common\bsp" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\Device\SiliconLabs\EFR32BG13P\Source" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\radio\rail_lib\common" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\sleep\src" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\bootloader\api" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\uartdrv\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\sleep\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\hardware\kit\EFR32BG13_BRD4104A\config" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\radio\rail_lib\chip\efr32" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\emdrv\common\inc" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\platform\halconfig\inc\hal-config" -I"C:\Users\user1\SimplicityStudio\v4_workspace\BT_MESH_Smart_Car_Parking\src" -O0 -fno-builtin -flto -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -MMD -MP -MF"src/letimer.d" -MT"src/letimer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


