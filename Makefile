
all :
	avr-g++ -Os -D F_CPU=16000000 -mmcu=atmega328p -c main.cpp
	avr-g++ -D F_CPU=16000000 -mmcu=atmega328p -o main.elf main.o
	avr-objcopy -O ihex main.elf main.hex

flash :
	avrdude -c usbasp -p m328p -P usb -U flash:w:main.hex

clean :
	rm *.hex *.o *.elf