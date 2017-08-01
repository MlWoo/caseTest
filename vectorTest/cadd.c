#include <stdio.h>
#include <omp.h>
#include <x86intrin.h>
#include <sys/time.h>
#define TH_OMP_OVERHEAD_THRESHOLD_VEC 128
#define TENSOR_SIZE 58016
#define KNL_CORES 68
#define REPEATED_TIMES 1000*200
#define ptrdiff_t size_t

int main()
{
    ptrdiff_t tensorSize = TENSOR_SIZE;
    float* src = (float*)malloc(sizeof(float)*tensorSize);
    int i = 0;
    int j = 0;
    for(i=0; i<tensorSize; i++){
      src[i] = 1.0 + i;
    }
    float* dst = (float*)malloc(sizeof(float)*tensorSize);

    for(i=0; i<tensorSize; i++){
      dst[i] = 2.f*src[i];
    }
    float* y = dst;
    float* x = src;
    #pragma ivdep
    for (i=0; i<tensorSize; i++) {
      y = dst + i;
      x = dst + i;
      *y = *y + *x;
    }
}
