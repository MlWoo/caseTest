ifeq ($(AVX), 512)
  cflags := -O3 -xCOMMON-AVX512  -nolib-inline -qopt-prefetch=3 -qopenmp 
  object := copy_para_avx512f.bin
else
  cflags := -O3 -march=core-avx2 -mavx  -nolib-inline -qopt-prefetch=3 -qopenmp 
  object := copy_para_avx2.bin
endif

 
all: copy.bin

copy.bin:
	#icc -qopenmp  -S -c -fsource-asm copy_overhead_omp.c -o copy_para.S
	#icc -qopenmp -O3 -xCOMMON-AVX512 copy_new.c -o copy_single.bin
	icc ${cflags} copy_overhead_omp.c -o $(object) 
	#icc -qopenmp  -S -c -fsource-asm copy_overhead_omp.c -o copy_para.S

clean:
	@rm -vf *.bin *.S
