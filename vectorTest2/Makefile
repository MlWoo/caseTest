.PHONY: clean

all: copy.bin

copy.bin:
	icc -std=c99 -xCOMMON-avx512 -O2 -D NOFUNCCALL -qopt-report-phase=vec -qopt-report=5 -S -c -fsource-asm cadd.c -o cadd.S
	#icc -std=c99 -march=core-avx2 -O2 -D NOFUNCCALL -qopt-report-phase=vec -qopt-report=5 -S -c -fsource-asm cadd.c -o cadd.S

clean:
	@rm -vf *.bin
