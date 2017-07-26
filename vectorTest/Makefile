.PHONY: clean

all: copy.bin

copy.bin:
	icc -std=c99 -mavx -O2 -D NOFUNCCALL -qopt-report-phase=vec -qopt-report=2 -S -c -fsource-asm cadd.c -o cadd.S

clean:
	@rm -vf *.bin
