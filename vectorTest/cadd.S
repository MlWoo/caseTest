# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.0.098 Build 20160721";
# mark_description "-std=c99 -mavx -O2 -D NOFUNCCALL -qopt-report-phase=vec -qopt-report=2 -S -c -fsource-asm -o cadd.S";
	.file "cadd.c"
	.text
..TXTST0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
# --- main()
main:
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]

### {

	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #12.1
        pushq     %rbp                                          #12.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #12.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #12.1
        pushq     %r15                                          #12.1
        subq      $120, %rsp                                    #12.1
        xorl      %esi, %esi                                    #12.1
        movl      $3, %edi                                      #12.1
        call      __intel_new_feature_proc_init                 #12.1
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
                                # LOE rbx r12 r13 r14
..B1.63:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  (%rsp)                                        #12.1

###     ptrdiff_t tensorSize = TENSOR_SIZE;
###     float* src = (float*)malloc(sizeof(float)*tensorSize);

        movl      $232064, %edi                                 #14.26
        orl       $32832, (%rsp)                                #12.1
        vldmxcsr  (%rsp)                                        #12.1
#       malloc(size_t)
        call      malloc                                        #14.26
                                # LOE rax rbx r12 r13 r14
..B1.62:                        # Preds ..B1.63
                                # Execution count [1.00e+00]
        movq      %rax, %r15                                    #14.26
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.62
                                # Execution count [9.00e-01]

###     int i = 0;
###     int j = 0;
###     for(i=0; i<tensorSize; i++){

        movq      %r15, %rax                                    #17.5
        andq      $31, %rax                                     #17.5
        testl     %eax, %eax                                    #17.5
        je        ..B1.7        # Prob 50%                      #17.5
                                # LOE rbx r12 r13 r14 r15 eax
..B1.3:                         # Preds ..B1.2
                                # Execution count [9.00e-01]
        testb     $3, %al                                       #17.5
        jne       ..B1.54       # Prob 10%                      #17.5
                                # LOE rbx r12 r13 r14 r15 eax
..B1.4:                         # Preds ..B1.3
                                # Execution count [9.00e-01]
        negl      %eax                                          #17.5
        xorl      %ecx, %ecx                                    #17.5
        addl      $32, %eax                                     #17.5
        xorl      %edx, %edx                                    #17.5
        shrl      $2, %eax                                      #17.5

###       src[i] = 1.0 + i;

        vmovss    .L_2il0floatpacket.5(%rip), %xmm0             #18.16
                                # LOE rdx rbx r12 r13 r14 r15 eax ecx xmm0
..B1.5:                         # Preds ..B1.5 ..B1.4
                                # Execution count [5.00e+00]
        vxorps    %xmm1, %xmm1, %xmm1                           #18.22
        vcvtsi2ss %ecx, %xmm1, %xmm1                            #18.22
        incl      %ecx                                          #17.5
        vaddss    %xmm1, %xmm0, %xmm2                           #18.22
        vmovss    %xmm2, (%r15,%rdx,4)                          #18.7
        incq      %rdx                                          #17.5
        cmpl      %eax, %ecx                                    #17.5
        jb        ..B1.5        # Prob 82%                      #17.5
                                # LOE rdx rbx r12 r13 r14 r15 eax ecx xmm0
..B1.7:                         # Preds ..B1.5 ..B1.2
                                # Execution count [9.00e-01]
        movl      $8, %edx                                      #18.7
        lea       1(%rax), %ecx                                 #18.7
        movl      %eax, %esi                                    #17.5
        lea       2(%rax), %r8d                                 #18.7
        negl      %esi                                          #17.5
        lea       3(%rax), %r9d                                 #18.7
        andl      $31, %esi                                     #17.5
        lea       4(%rax), %r10d                                #18.7
        vmovd     %edx, %xmm1                                   #18.7
        vmovd     %ecx, %xmm0                                   #18.7
        negl      %esi                                          #17.5
        lea       5(%rax), %r11d                                #18.7
        vmovd     %eax, %xmm3                                   #18.7
        lea       6(%rax), %edx                                 #18.7
        vmovd     %r8d, %xmm2                                   #18.7
        lea       7(%rax), %ecx                                 #18.7
        vmovd     %r9d, %xmm4                                   #18.7
        vmovd     %r10d, %xmm7                                  #18.7
        vmovd     %r11d, %xmm8                                  #18.7
        lea       58016(%rsi), %edi                             #17.5
        vmovd     %edx, %xmm9                                   #18.7
        vmovd     %ecx, %xmm10                                  #18.7
        movl      %edi, %ecx                                    #17.5
        vpunpcklqdq %xmm0, %xmm3, %xmm5                         #18.7
        vpunpcklqdq %xmm4, %xmm2, %xmm6                         #18.7
        vpunpcklqdq %xmm8, %xmm7, %xmm11                        #18.7
        vpunpcklqdq %xmm10, %xmm9, %xmm12                       #18.7
        vpshufd   $0, %xmm1, %xmm1                              #18.7
        vshufps   $136, %xmm6, %xmm5, %xmm3                     #18.7
        vshufps   $136, %xmm12, %xmm11, %xmm2                   #18.7
        movl      %eax, %eax                                    #17.5
        vmovups   .L_2il0floatpacket.0(%rip), %ymm0             #18.16
        .align    16,0x90
                                # LOE rax rcx rbx r12 r13 r14 r15 esi edi xmm1 xmm2 xmm3 ymm0
..B1.8:                         # Preds ..B1.8 ..B1.7
                                # Execution count [5.00e+00]
        vpaddd    %xmm1, %xmm3, %xmm7                           #18.7
        vinsertf128 $1, %xmm2, %ymm3, %ymm4                     #18.22
        vpaddd    %xmm1, %xmm2, %xmm10                          #18.7
        vcvtdq2ps %ymm4, %ymm5                                  #18.22
        vpaddd    %xmm1, %xmm10, %xmm15                         #18.7
        vaddps    %ymm5, %ymm0, %ymm6                           #18.22
        vpaddd    %xmm1, %xmm15, %xmm5                          #18.7
        vmovups   %ymm6, (%r15,%rax,4)                          #18.7
        vpaddd    %xmm1, %xmm7, %xmm11                          #18.7
        vinsertf128 $1, %xmm10, %ymm7, %ymm2                    #18.22
        vcvtdq2ps %ymm2, %ymm8                                  #18.22
        vaddps    %ymm8, %ymm0, %ymm9                           #18.22
        vmovups   %ymm9, 32(%r15,%rax,4)                        #18.7
        vpaddd    %xmm1, %xmm11, %xmm3                          #18.7
        vinsertf128 $1, %xmm15, %ymm11, %ymm12                  #18.22
        vcvtdq2ps %ymm12, %ymm13                                #18.22
        vaddps    %ymm13, %ymm0, %ymm14                         #18.22
        vmovups   %ymm14, 64(%r15,%rax,4)                       #18.7
        vinsertf128 $1, %xmm5, %ymm3, %ymm15                    #18.22
        vpaddd    %xmm1, %xmm3, %xmm3                           #18.7
        vcvtdq2ps %ymm15, %ymm2                                 #18.22
        vaddps    %ymm2, %ymm0, %ymm4                           #18.22
        vpaddd    %xmm1, %xmm5, %xmm2                           #18.7
        vmovups   %ymm4, 96(%r15,%rax,4)                        #18.7
        addq      $32, %rax                                     #17.5
        cmpq      %rcx, %rax                                    #17.5
        jb        ..B1.8        # Prob 82%                      #17.5
                                # LOE rax rcx rbx r12 r13 r14 r15 esi edi xmm1 xmm2 xmm3 ymm0
..B1.9:                         # Preds ..B1.8
                                # Execution count [9.00e-01]
        lea       58017(%rsi), %r9d                             #17.5
        cmpl      $58016, %r9d                                  #17.5
        ja        ..B1.18       # Prob 50%                      #17.5
                                # LOE rcx rbx r12 r13 r14 r15 esi edi r9d
..B1.10:                        # Preds ..B1.9
                                # Execution count [9.00e-01]
        movl      %edi, %edx                                    #17.5
        negl      %edx                                          #17.5
        addl      $58016, %edx                                  #17.5
        cmpl      $4, %edx                                      #17.5
        jb        ..B1.59       # Prob 10%                      #17.5
                                # LOE rcx rbx r12 r13 r14 r15 edx esi edi r9d
..B1.11:                        # Preds ..B1.10
                                # Execution count [9.00e-01]
        movl      $4, %r8d                                      #18.7
        lea       58018(%rsi), %r10d                            #18.7
        addl      $58019, %esi                                  #18.7
        vmovd     %edi, %xmm0                                   #18.7
        vmovd     %r9d, %xmm1                                   #18.7
        movl      %edx, %eax                                    #17.5
        vpunpcklqdq %xmm1, %xmm0, %xmm5                         #18.7
        andl      $-4, %eax                                     #17.5
        vmovd     %r10d, %xmm3                                  #18.7
        vmovd     %r8d, %xmm2                                   #18.7
        vmovd     %esi, %xmm4                                   #18.7
        xorl      %esi, %esi                                    #17.5
        vpunpcklqdq %xmm4, %xmm3, %xmm6                         #18.7
        vpshufd   $0, %xmm2, %xmm2                              #18.7
        vshufps   $136, %xmm6, %xmm5, %xmm1                     #18.7
        vmovups   .L_2il0floatpacket.1(%rip), %xmm0             #18.16
                                # LOE rcx rbx r12 r13 r14 r15 eax edx esi edi xmm0 xmm1 xmm2
..B1.12:                        # Preds ..B1.12 ..B1.11
                                # Execution count [5.00e+00]
        vcvtdq2ps %xmm1, %xmm3                                  #18.22
        addl      $4, %esi                                      #17.5
        vpaddd    %xmm2, %xmm1, %xmm1                           #18.7
        vaddps    %xmm3, %xmm0, %xmm4                           #18.22
        vmovups   %xmm4, (%r15,%rcx,4)                          #18.7
        addq      $4, %rcx                                      #17.5
        cmpl      %eax, %esi                                    #17.5
        jb        ..B1.12       # Prob 82%                      #17.5
                                # LOE rcx rbx r12 r13 r14 r15 eax edx esi edi xmm0 xmm1 xmm2
..B1.14:                        # Preds ..B1.12 ..B1.59 ..B1.54
                                # Execution count [9.00e-01]
        cmpl      %edx, %eax                                    #17.5
        jae       ..B1.18       # Prob 0%                       #17.5
                                # LOE rbx r12 r13 r14 r15 eax edx edi
..B1.15:                        # Preds ..B1.14
                                # Execution count [9.00e-01]
        vmovss    .L_2il0floatpacket.5(%rip), %xmm0             #18.16
                                # LOE rbx r12 r13 r14 r15 eax edx edi xmm0
..B1.16:                        # Preds ..B1.16 ..B1.15
                                # Execution count [5.00e+00]
        vxorps    %xmm1, %xmm1, %xmm1                           #18.22
        lea       (%rdi,%rax), %ecx                             #18.7
        vcvtsi2ss %ecx, %xmm1, %xmm1                            #18.22
        movslq    %ecx, %rcx                                    #18.7
        incl      %eax                                          #17.5
        vaddss    %xmm1, %xmm0, %xmm2                           #18.22
        vmovss    %xmm2, (%r15,%rcx,4)                          #18.7
        cmpl      %edx, %eax                                    #17.5
        jb        ..B1.16       # Prob 82%                      #17.5
                                # LOE rbx r12 r13 r14 r15 eax edx edi xmm0
..B1.18:                        # Preds ..B1.16 ..B1.9 ..B1.14
                                # Execution count [1.00e+00]

###     }
###     float* dst = (float*)malloc(sizeof(float)*tensorSize);

        movl      $232064, %edi                                 #20.26
        vzeroupper                                              #20.26
#       malloc(size_t)
        call      malloc                                        #20.26
                                # LOE rax rbx r12 r13 r14 r15
..B1.64:                        # Preds ..B1.18
                                # Execution count [1.00e+00]
        movq      %rax, %r9                                     #20.26
                                # LOE rbx r9 r12 r13 r14 r15
..B1.19:                        # Preds ..B1.64
                                # Execution count [9.00e-01]

### 
###     for(i=0; i<tensorSize; i++){

        movq      %r9, %r10                                     #22.5
        andq      $31, %r10                                     #22.5
        movl      %r10d, %r8d                                   #22.5
        movl      %r8d, %edi                                    #22.5
        testl     %r8d, %r8d                                    #22.5
        je        ..B1.24       # Prob 50%                      #22.5
                                # LOE rbx r9 r10 r12 r13 r14 r15 edi r8d
..B1.20:                        # Preds ..B1.19
                                # Execution count [9.00e-01]
        testl     $3, %r8d                                      #22.5
        jne       ..B1.55       # Prob 10%                      #22.5
                                # LOE rbx r9 r10 r12 r13 r14 r15 r8d
..B1.21:                        # Preds ..B1.20
                                # Execution count [9.00e-01]
        movl      %r8d, %edi                                    #22.5
        xorl      %edx, %edx                                    #22.5
        negl      %edi                                          #22.5
        addl      $32, %edi                                     #22.5
        shrl      $2, %edi                                      #22.5
        movl      %edi, %eax                                    #22.5

###       dst[i] = 2.f*src[i];

        vmovss    .L_2il0floatpacket.2(%rip), %xmm0             #23.16
                                # LOE rax rdx rbx r9 r10 r12 r13 r14 r15 edi r8d xmm0
..B1.22:                        # Preds ..B1.22 ..B1.21
                                # Execution count [5.00e+00]
        vmulss    (%r15,%rdx,4), %xmm0, %xmm1                   #23.20
        vmovss    %xmm1, (%r9,%rdx,4)                           #23.7
        incq      %rdx                                          #22.5
        cmpq      %rax, %rdx                                    #22.5
        jb        ..B1.22       # Prob 82%                      #22.5
        jmp       ..B1.25       # Prob 100%                     #22.5
                                # LOE rax rdx rbx r9 r10 r12 r13 r14 r15 edi r8d xmm0
..B1.24:                        # Preds ..B1.19
                                # Execution count [4.50e-01]
        movq      %r10, %rax                                    #22.5
                                # LOE rax rbx r9 r10 r12 r13 r14 r15 edi r8d
..B1.25:                        # Preds ..B1.22 ..B1.24
                                # Execution count [9.00e-01]
        negl      %edi                                          #22.5
        andl      $31, %edi                                     #22.5
        negl      %edi                                          #22.5
        vmovups   .L_2il0floatpacket.3(%rip), %ymm0             #23.16
        lea       58016(%rdi), %esi                             #22.5
        movl      %esi, %edx                                    #22.5
        .align    16,0x90
                                # LOE rax rdx rbx r9 r10 r12 r13 r14 r15 esi edi r8d ymm0
..B1.26:                        # Preds ..B1.26 ..B1.25
                                # Execution count [5.00e+00]
        vmovups   (%r15,%rax,4), %xmm1                          #23.20
        vmovups   32(%r15,%rax,4), %xmm4                        #23.20
        vmovups   64(%r15,%rax,4), %xmm7                        #23.20
        vmovups   96(%r15,%rax,4), %xmm10                       #23.20
        vinsertf128 $1, 48(%r15,%rax,4), %ymm4, %ymm5           #23.20
        vinsertf128 $1, 16(%r15,%rax,4), %ymm1, %ymm2           #23.20
        vinsertf128 $1, 80(%r15,%rax,4), %ymm7, %ymm8           #23.20
        vinsertf128 $1, 112(%r15,%rax,4), %ymm10, %ymm11        #23.20
        vmulps    %ymm2, %ymm0, %ymm3                           #23.20
        vmulps    %ymm5, %ymm0, %ymm6                           #23.20
        vmulps    %ymm8, %ymm0, %ymm9                           #23.20
        vmulps    %ymm11, %ymm0, %ymm12                         #23.20
        vmovups   %ymm3, (%r9,%rax,4)                           #23.7
        vmovups   %ymm6, 32(%r9,%rax,4)                         #23.7
        vmovups   %ymm9, 64(%r9,%rax,4)                         #23.7
        vmovups   %ymm12, 96(%r9,%rax,4)                        #23.7
        addq      $32, %rax                                     #22.5
        cmpq      %rdx, %rax                                    #22.5
        jb        ..B1.26       # Prob 82%                      #22.5
                                # LOE rax rdx rbx r9 r10 r12 r13 r14 r15 esi edi r8d ymm0
..B1.27:                        # Preds ..B1.26
                                # Execution count [9.00e-01]
        lea       58017(%rdi), %eax                             #22.5
        cmpl      $58016, %eax                                  #22.5
        ja        ..B1.36       # Prob 50%                      #22.5
                                # LOE rbx r9 r10 r12 r13 r14 r15 esi edi r8d
..B1.28:                        # Preds ..B1.27
                                # Execution count [9.00e-01]
        movl      %esi, %edx                                    #22.5
        negl      %edx                                          #22.5
        addl      $58016, %edx                                  #22.5
        cmpl      $4, %edx                                      #22.5
        jb        ..B1.58       # Prob 10%                      #22.5
                                # LOE rbx r9 r10 r12 r13 r14 r15 edx esi edi r8d
..B1.29:                        # Preds ..B1.28
                                # Execution count [9.00e-01]
        movl      %edx, %ecx                                    #22.5
        xorl      %eax, %eax                                    #22.5
        vmovups   .L_2il0floatpacket.4(%rip), %xmm0             #23.16
        andl      $-4, %ecx                                     #22.5
                                # LOE rbx r9 r10 r12 r13 r14 r15 eax edx ecx esi edi r8d xmm0
..B1.30:                        # Preds ..B1.30 ..B1.29
                                # Execution count [5.00e+00]
        lea       58016(%rax,%rdi), %r11d                       #23.20
        addl      $4, %eax                                      #22.5
        movslq    %r11d, %r11                                   #23.20
        vmulps    (%r15,%r11,4), %xmm0, %xmm1                   #23.20
        vmovups   %xmm1, (%r9,%r11,4)                           #23.7
        cmpl      %ecx, %eax                                    #22.5
        jb        ..B1.30       # Prob 82%                      #22.5
                                # LOE rbx r9 r10 r12 r13 r14 r15 eax edx ecx esi edi r8d xmm0
..B1.32:                        # Preds ..B1.30 ..B1.58 ..B1.55
                                # Execution count [9.00e-01]
        cmpl      %edx, %ecx                                    #22.5
        jae       ..B1.36       # Prob 0%                       #22.5
                                # LOE rbx r9 r10 r12 r13 r14 r15 edx ecx esi r8d
..B1.33:                        # Preds ..B1.32
                                # Execution count [9.00e-01]
        vmovss    .L_2il0floatpacket.2(%rip), %xmm0             #23.16
                                # LOE rbx r9 r10 r12 r13 r14 r15 edx ecx esi r8d xmm0
..B1.34:                        # Preds ..B1.34 ..B1.33
                                # Execution count [5.00e+00]
        lea       (%rsi,%rcx), %eax                             #23.20
        incl      %ecx                                          #22.5
        movslq    %eax, %rax                                    #23.20
        vmulss    (%r15,%rax,4), %xmm0, %xmm1                   #23.20
        vmovss    %xmm1, (%r9,%rax,4)                           #23.7
        cmpl      %edx, %ecx                                    #22.5
        jb        ..B1.34       # Prob 82%                      #22.5
                                # LOE rbx r9 r10 r12 r13 r14 r15 edx ecx esi r8d xmm0
..B1.36:                        # Preds ..B1.34 ..B1.27 ..B1.32
                                # Execution count [9.00e-01]

###     }
###     float* y = dst;
###     float* x = src;
###     #pragma ivdep
###     for (i=0; i<tensorSize; i++) {

        testl     %r8d, %r8d                                    #28.5
        je        ..B1.42       # Prob 50%                      #28.5
                                # LOE rbx r9 r10 r12 r13 r14 r8d
..B1.37:                        # Preds ..B1.36
                                # Execution count [9.00e-01]
        testl     $3, %r8d                                      #28.5
        jne       ..B1.56       # Prob 10%                      #28.5
                                # LOE rbx r9 r12 r13 r14 r8d
..B1.38:                        # Preds ..B1.37
                                # Execution count [9.00e-01]
        negl      %r8d                                          #28.5
        xorl      %eax, %eax                                    #28.5
        addl      $32, %r8d                                     #28.5
        shrl      $2, %r8d                                      #28.5
        movl      %r8d, %r10d                                   #28.5
                                # LOE rax rbx r9 r10 r12 r13 r14 r8d
..B1.39:                        # Preds ..B1.39 ..B1.38
                                # Execution count [5.00e+00]

###       y = dst + i;
###       x = dst + i;
###       *y = *y + *x;

        vmovss    (%r9,%rax,4), %xmm0                           #31.13
        vaddss    %xmm0, %xmm0, %xmm1                           #31.18
        vmovss    %xmm1, (%r9,%rax,4)                           #31.8
        incq      %rax                                          #28.5
        cmpq      %r10, %rax                                    #28.5
        jb        ..B1.39       # Prob 82%                      #28.5
                                # LOE rax rbx r9 r10 r12 r13 r14 r8d
..B1.42:                        # Preds ..B1.36 ..B1.39
                                # Execution count [9.00e-01]
        negl      %r8d                                          #28.5
        andl      $31, %r8d                                     #28.5
        negl      %r8d                                          #28.5
        lea       58016(%r8), %eax                              #28.5
        movl      %eax, %edx                                    #28.5
        .align    16,0x90
                                # LOE rdx rbx r9 r10 r12 r13 r14 eax r8d
..B1.43:                        # Preds ..B1.43 ..B1.42
                                # Execution count [5.00e+00]
        vmovups   (%r9,%r10,4), %ymm0                           #31.13
        vmovups   32(%r9,%r10,4), %ymm2                         #31.13
        vmovups   64(%r9,%r10,4), %ymm4                         #31.13
        vmovups   96(%r9,%r10,4), %ymm6                         #31.13
        vaddps    %ymm0, %ymm0, %ymm1                           #31.18
        vaddps    %ymm2, %ymm2, %ymm3                           #31.18
        vaddps    %ymm4, %ymm4, %ymm5                           #31.18
        vaddps    %ymm6, %ymm6, %ymm7                           #31.18
        vmovups   %ymm1, (%r9,%r10,4)                           #31.8
        vmovups   %ymm3, 32(%r9,%r10,4)                         #31.8
        vmovups   %ymm5, 64(%r9,%r10,4)                         #31.8
        vmovups   %ymm7, 96(%r9,%r10,4)                         #31.8
        addq      $32, %r10                                     #28.5
        cmpq      %rdx, %r10                                    #28.5
        jb        ..B1.43       # Prob 82%                      #28.5
                                # LOE rdx rbx r9 r10 r12 r13 r14 eax r8d
..B1.44:                        # Preds ..B1.43
                                # Execution count [9.00e-01]
        lea       58017(%r8), %edx                              #28.5
        cmpl      $58016, %edx                                  #28.5
        ja        ..B1.53       # Prob 50%                      #28.5
                                # LOE rbx r9 r12 r13 r14 eax r8d
..B1.45:                        # Preds ..B1.44
                                # Execution count [9.00e-01]
        movl      %eax, %ecx                                    #28.5
        negl      %ecx                                          #28.5
        addl      $58016, %ecx                                  #28.5
        cmpl      $4, %ecx                                      #28.5
        jb        ..B1.57       # Prob 10%                      #28.5
                                # LOE rbx r9 r12 r13 r14 eax ecx r8d
..B1.46:                        # Preds ..B1.45
                                # Execution count [9.00e-01]
        movl      %ecx, %edx                                    #28.5
        xorl      %esi, %esi                                    #28.5
        andl      $-4, %edx                                     #28.5
                                # LOE rbx r9 r12 r13 r14 eax edx ecx esi r8d
..B1.47:                        # Preds ..B1.47 ..B1.46
                                # Execution count [5.00e+00]
        lea       58016(%rsi,%r8), %edi                         #29.11
        addl      $4, %esi                                      #28.5
        movslq    %edi, %rdi                                    #29.11
        vmovups   (%r9,%rdi,4), %xmm0                           #31.13
        vaddps    %xmm0, %xmm0, %xmm1                           #31.18
        vmovups   %xmm1, (%r9,%rdi,4)                           #31.8
        cmpl      %edx, %esi                                    #28.5
        jb        ..B1.47       # Prob 82%                      #28.5
                                # LOE rbx r9 r12 r13 r14 eax edx ecx esi r8d
..B1.49:                        # Preds ..B1.47 ..B1.57 ..B1.56
                                # Execution count [9.00e-01]
        cmpl      %ecx, %edx                                    #28.5
        jae       ..B1.53       # Prob 0%                       #28.5
                                # LOE rbx r9 r12 r13 r14 eax edx ecx
..B1.51:                        # Preds ..B1.49 ..B1.51
                                # Execution count [5.00e+00]
        lea       (%rax,%rdx), %esi                             #29.11
        incl      %edx                                          #28.5
        movslq    %esi, %rsi                                    #30.11
        vmovss    (%r9,%rsi,4), %xmm0                           #31.13
        vaddss    %xmm0, %xmm0, %xmm1                           #31.18
        vmovss    %xmm1, (%r9,%rsi,4)                           #31.8
        cmpl      %ecx, %edx                                    #28.5
        jb        ..B1.51       # Prob 82%                      #28.5
                                # LOE rbx r9 r12 r13 r14 eax edx ecx
..B1.53:                        # Preds ..B1.51 ..B1.44 ..B1.49
                                # Execution count [1.00e+00]

###     }
### }

        vzeroupper                                              #33.1
        xorl      %eax, %eax                                    #33.1
        addq      $120, %rsp                                    #33.1
	.cfi_restore 15
        popq      %r15                                          #33.1
        movq      %rbp, %rsp                                    #33.1
        popq      %rbp                                          #33.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #33.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.54:                        # Preds ..B1.3
                                # Execution count [9.00e-02]: Infreq
        xorl      %edi, %edi                                    #17.5
        movl      $58016, %edx                                  #17.5
        xorl      %eax, %eax                                    #17.5
        jmp       ..B1.14       # Prob 100%                     #17.5
                                # LOE rbx r12 r13 r14 r15 eax edx edi
..B1.55:                        # Preds ..B1.20
                                # Execution count [9.00e-02]: Infreq
        xorl      %esi, %esi                                    #22.5
        movl      $58016, %edx                                  #22.5
        xorl      %ecx, %ecx                                    #22.5
        jmp       ..B1.32       # Prob 100%                     #22.5
                                # LOE rbx r9 r10 r12 r13 r14 r15 edx ecx esi r8d
..B1.56:                        # Preds ..B1.37
                                # Execution count [9.00e-02]: Infreq
        xorl      %eax, %eax                                    #28.5
        movl      $58016, %ecx                                  #28.5
        xorl      %edx, %edx                                    #28.5
        jmp       ..B1.49       # Prob 100%                     #28.5
                                # LOE rbx r9 r12 r13 r14 eax edx ecx
..B1.57:                        # Preds ..B1.45
                                # Execution count [9.00e-02]: Infreq
        xorl      %edx, %edx                                    #28.5
        jmp       ..B1.49       # Prob 100%                     #28.5
                                # LOE rbx r9 r12 r13 r14 eax edx ecx
..B1.58:                        # Preds ..B1.28
                                # Execution count [9.00e-02]: Infreq
        xorl      %ecx, %ecx                                    #22.5
        jmp       ..B1.32       # Prob 100%                     #22.5
                                # LOE rbx r9 r10 r12 r13 r14 r15 edx ecx esi r8d
..B1.59:                        # Preds ..B1.10
                                # Execution count [9.00e-02]: Infreq
        xorl      %eax, %eax                                    #17.5
        jmp       ..B1.14       # Prob 100%                     #17.5
        .align    16,0x90
	.cfi_endproc
                                # LOE rbx r12 r13 r14 r15 eax edx edi
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
	.section .rodata, "a"
	.align 32
	.align 32
.L_2il0floatpacket.0:
	.long	0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,32
	.align 32
.L_2il0floatpacket.3:
	.long	0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,32
	.align 16
.L_2il0floatpacket.1:
	.long	0x3f800000,0x3f800000,0x3f800000,0x3f800000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,16
	.align 16
.L_2il0floatpacket.4:
	.long	0x40000000,0x40000000,0x40000000,0x40000000
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,16
	.align 4
.L_2il0floatpacket.2:
	.long	0x40000000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,4
	.align 4
.L_2il0floatpacket.5:
	.long	0x3f800000
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,4
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
# End
