#cflags := -O3 -xCOMMON-AVX512  -nolib-inline -qopt-prefetch=3 -qopenmp -I/opt/intel/compilers_and_libraries_2017.4.196/linux/mkl/include -L/opt/intel/compilers_and_libraries_2017.4.196/linux/mkl/lib/intel64_lin -lmkl_rt
cflags := -O3 -march=core-avx2 -mavx  -nolib-inline -qopt-prefetch=3 -qopenmp -I/opt/intel/compilers_and_libraries_2017.4.196/linux/mkl/include -L/opt/intel/compilers_and_libraries_2017.4.196/linux/mkl/lib/intel64_lin -lmkl_rt

#cflags := -O3 -xCOMMON-AVX512 -qopt-report=5 -qopt-prefetch=3 -qopenmp -I/opt/intel/compilers_and_libraries_2017.4.196/linux/mkl/include -L/opt/intel/compilers_and_libraries_2017.4.196/linux/mkl/lib/intel64_lin -lmkl_rt
.PHONY: clean
 
all: copy.bin

copy.bin:
	#icc -qopenmp  -S -c -fsource-asm copy_new.c -o copy_para.S
	#icc -qopenmp -O3 -xCOMMON-AVX512 copy_new.c -o copy_single.bin
	icc ${cflags} copy_overhead_omp.c -o copy_para_bdw.bin

clean:
	@rm -vf *.bin *.S