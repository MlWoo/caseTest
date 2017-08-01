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
  //for(; tensorSize < 200000; tensorSize += 256){
    float* src = (float*)malloc(sizeof(float)*tensorSize);
    float* dst = (float*)malloc(sizeof(float)*tensorSize);
                      
    int i = 0;
    int j = 0;
    for(i=0; i<tensorSize; i++){
      src[i] = 1.0 + i;
      dst[i] = 2.f;
    }



    ptrdiff_t pthreads =  KNL_CORES; //threads >= 1 ? threads:1;
    ptrdiff_t n = tensorSize;
    struct timeval tic;
    struct timeval toc;
    float interval;

    struct timespec time_start;
    struct timespec time_end;
    int interval2;
    // This funciton

    //gettimeofday(&tic, NULL);
   clock_gettime(CLOCK_REALTIME, &time_start);
    memcpy(dst, src, tensorSize);
   clock_gettime(CLOCK_REALTIME, &time_end);
    //gettimeofday(&toc, NULL);
    //interval = (toc.tv_sec-tic.tv_sec)*1000 + (float)(toc.tv_usec-tic.tv_usec)/1000;
   interval2 = (time_end.tv_sec-time_end.tv_sec)*1000000000 + time_end.tv_nsec-time_start.tv_nsec;
   printf("memcopy      tensorSize: %10d thread: %6d time:  %10dns  \n", tensorSize, threads, interval2);
   
   #pragma omp parallel for num_threads(threads1)
   for (i=0; i<tensorSize; i=i+1) {
       float dummy = 1.f;
   }


   //gettimeofday(&tic, NULL);
   clock_gettime(CLOCK_REALTIME, &time_start);
   #pragma omp parallel for num_threads(threads2)  
   #pragma ivdep 
   for (i=0; i<tensorSize; ++i) {
       dst[i] = src[i];
   }
   clock_gettime(CLOCK_REALTIME, &time_end);
   //gettimeofday(&toc, NULL);
   //interval = (toc.tv_sec-tic.tv_sec)*1000 + (float)(toc.tv_usec-tic.tv_usec)/1000;
   interval2 = (time_end.tv_sec-time_end.tv_sec)*1000000000 + time_end.tv_nsec-time_start.tv_nsec;
   printf("copy direct1 tensorSize: %10d thread: %6d time:  %10dns  \n", tensorSize, threads2, interval2);

/*    
   int diff1 = 0, diff2 = 0, diff3 = 0, diff4 = 0;
   #pragma omp parallel num_threads(threads) reduction(+: diff1,diff2, diff3, diff4)
   {
       // warm up
       #pragma omp for  
       for (i=0; i<tensorSize; ++i) {
          dst[i] = src[i];
       }
      
       struct timeval tic;
       struct timeval toc;
       gettimeofday(&tic, NULL);
       #pragma omp for 
       for (i=0; i<tensorSize-VLEN; i=i+VLEN) {
           __m512 YMM0 = _mm512_load_ps(src+i);
           _mm512_storeu_ps(dst+i, YMM0);
       }
       gettimeofday(&toc, NULL);
       diff1 = (toc.tv_sec-tic.tv_sec);
       diff2 = (toc.tv_usec-tic.tv_usec);

       gettimeofday(&tic, NULL);
       #pragma omp for nowait
       for (i=0; i<tensorSize-VLEN; i=i+VLEN) {
           __m512 YMM0 = _mm512_load_ps(src+i);
           _mm512_storeu_ps(dst+i, YMM0);
       }
       gettimeofday(&toc, NULL);
       diff3 = (toc.tv_sec-tic.tv_sec);
       diff4 = (toc.tv_usec-tic.tv_usec);

   }*/
   for(i=0; i<tensorSize; i++){
     if(dst[i] != src[i]) {
       printf("\nWrong Answer!!! offset is %6d\n", i);
       break;
     }
   }

   //printf("copy direct2 tensorSize: %10d thread: %6d time:  %10fms  \n", tensorSize, pthreads, (diff1*1000+(float)(diff2/1000.0))/threads);
   //printf("copy direct3 tensorSize: %10d thread: %6d time:  %10fms  \n", tensorSize, pthreads, (diff3*1000+(float)(diff4/1000.0))/threads);
   free(src);
   free(dst);

  return 0;
}

