#include <stdio.h>
#include <omp.h>
#include <x86intrin.h>
#include <sys/time.h>
#include <time.h>
#include <malloc.h>
#define TH_OMP_OVERHEAD_THRESHOLD_VEC 128
#define TENSOR_SIZE 1008 
//#define TENSOR_SIZE 25000000
#define KNL_CORES 68
#define REPEATED_TIMES 1000*200
#define ptrdiff_t size_t

int main(int argc, char *argv[])
{
  
  ptrdiff_t threads = 2;
  int threads1 = atoi(argv[1]);
  int threads2 = atoi(argv[2]);
  ptrdiff_t tensorSize = TENSOR_SIZE;
  struct timespec time_start;
  struct timespec time_end;
  int interval2;
  float* src = (float*)malloc(sizeof(float)*tensorSize);
  float* dst = (float*)malloc(sizeof(float)*tensorSize);
                    
  int i = 0;
  for(i=0; i<tensorSize; i++){
    src[i] = 1.0 + i;
    dst[i] = 2.f;
  }

  clock_gettime(CLOCK_REALTIME, &time_start);
  memcpy(dst, src, tensorSize);
  clock_gettime(CLOCK_REALTIME, &time_end);
  interval2 = (time_end.tv_sec-time_end.tv_sec)*1000000000 + time_end.tv_nsec-time_start.tv_nsec;
  printf("memcopy      tensorSize: %10d thread: %6d time:  %10dns  \n", tensorSize, threads, interval2);
   
  #pragma omp parallel for num_threads(threads1)
  for (i=0; i<tensorSize; i=i+1) { //spawn threads
    float dummy = 1.f;
  }


  //double t_start;
  //double t_end;
  clock_gettime(CLOCK_REALTIME, &time_start);
  //t_start = omp_get_wtime();
  //#pragma omp parallel for num_threads(threads2) if (tensorSize > 4095) 
  #pragma omp simd //vector always 
  for (i=0; i<tensorSize; ++i) {
    dst[i] = src[i];
  }
  //t_end = omp_get_wtime();
  clock_gettime(CLOCK_REALTIME, &time_end);
  //double t_in = t_end - t_start;
  interval2 = (time_end.tv_sec-time_end.tv_sec)*1000000000 + time_end.tv_nsec-time_start.tv_nsec;
  printf("copy direct1 tensorSize: %10d thread: %6d time:  %10dns  \n", tensorSize, threads2, interval2);
  //printf("copy direct1 tensorSize: %10d thread: %6d time:  %16lfs  \n", tensorSize, threads2, t_in);

  for(i=0; i<tensorSize; i++){
    if(dst[i] != src[i]) {
      printf("\nWrong Answer!!! offset is %6d\n", i);
      break;
    }
  }

   free(src);
   free(dst);

  return 0;
}

