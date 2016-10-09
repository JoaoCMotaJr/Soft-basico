all: SB
SB: main.o
	gcc -o SB.exe main.o
main.o: main.c Decoder.h
	gcc -o main.o -c main.c -W -Wall -ansi
clean:
	rm -rf *.o
mrproper: clean
	rm -rf SB
joao: main.c Decoder.h
	gcc -std=c99 main.c Decoder.h -o assembler
	./assembler
