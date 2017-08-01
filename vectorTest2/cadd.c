#include <stdio.h>
#include <omp.h>
#include <x86intrin.h>
#include <sys/time.h>
#include <math.h>
#define TH_OMP_OVERHEAD_THRESHOLD_VEC 8
#define TENSOR_SIZE 5808
#define KNL_CORES 68
#define REPEATED_TIMES 1000*200
#define ptrdiff_t size_t

typedef int* __restrict__  __attribute__((align_value (64))) aligned_int_ptr;

void SearchingIndex16(int index, int offset[], long *stride, int dim, long* size)
{
  int i = 0;
  int j = 0;
  int rem[16] = {0};
  int quot[16] = {0};
  int lineIndex[16] = {0};
  for(j =0; j < 16; j++) {
    lineIndex[j] =  index+j;
  }
  for(i = dim-1; i >= 0; --i) {

    int sz = size[i];
    int st = stride[i];
    #pragma vector always
    for(j=0; j < 16; j++){
      quot[j] = lineIndex[j]/sz;
    }
    #pragma vector always 
    for(j=0; j < 16; j++){
      rem[j] = lineIndex[j]-quot[j]*sz;
    }

    #pragma vector always
    for(j=0; j < 16; j++){
      lineIndex[j] =  quot[j];
    }
    #pragma vector always
    for(j=0; j < 16; j++){
      offset[j] += rem[j]*st;
    }
  }
}


void Sigmoid( float* __restrict__ x,  float* __restrict__ y){
  int j = 0;
  #pragma vector always
  for(j=0; j < 16; j++){
    y[j] = 1.f / (1.f + expf(-x[j]));
  }
}

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
    #pragma vector always
    for (i=0; i<tensorSize; i++) {
      y = dst + i;
      x = dst + i;
      *y = *y + *x;
    }
}
