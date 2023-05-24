## __Microphone Streaming Application__

__IMPORTANT__: This application is based on X-CUBE-MEMSMIC1 examples using X-CUBE-MEMSMIC1 drivers for X-NUCLEO-AMICAM1 dev board that have been ported to STM32WB55. These drivers or this application are not a part of X-CUBE-MEMSMIC1. In case of any questions or problems, please contact me (petar.susac@fer.hr or petar.susac@gmail.com).

## Usage instructions

Reconfiguring solder bridges on AMICAM1 board is not required. However, since AMICAM1 pinout does not match STM32WB55RG-Nucleo pinout, a few extra connections need to be made (e.g. using jumer cables) to route AMICAM1 SAI lines to I2S-enabled STM pins:

AMICAM1 CN7 pin 1 -> Nucleo CN10 pin 25 (SAI MCLK -> I2S CLK)

AMICAM1 CN7 pin 3 -> Nucleo CN10 pin 31 (SAI SD -> I2S SD1)

AMICAM1 CN7 pin 17 -> Nucleo CN10 pin 19 (SAI FS -> I2S WS)

This project was developed using STM32CubeIDE. To run the program, open the STM32CubeIDE project directory in CubeIDE, build and flash the project to STM32WB55RG-Nucleo. Connect a USB cable to AMICAM1 USB connector and to the PC. The device drivers should be recognized by the PC as STM32 Microphone or something similar. Record audio using any recording software (tested with Audacity).
