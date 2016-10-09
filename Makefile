all: SB
	./SB ../tst/W2-2.a ../tst/output2.mif
	./SB ../tst/W2-3.a ../tst/output3.mif
SB: main.o
	gcc -o SB main.o
main.o: main.c Decoder.h
	gcc -o main.o -c main.c -W -Wall -ansi
clean:
	rm -rf *.o
mrproper: clean
	rm -rf SB
allw: SBW
	./SBW ../tst/W2-2.a ../tst/output2.mif
	./SBW ../tst/W2-3.a ../tst/output3.mif
SBW: main.o
	gcc -o SBW.exe main.o
