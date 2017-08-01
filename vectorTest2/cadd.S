	.section .text
.LNDBG_TX:
# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.0.098 Build 20160721";
# mark_description "-std=c99 -xCOMMON-avx512 -O2 -D NOFUNCCALL -qopt-report-phase=vec -qopt-report=5 -S -c -fsource-asm -o cadd.";
# mark_description "S";
	.file "cadd.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
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
                                                          #58.1
..LN0:
	.file   1 "cadd.c"
	.loc    1  58  is_stmt 1
        pushq     %rbp                                          #58.1
	.cfi_def_cfa_offset 16
..LN1:
        movq      %rsp, %rbp                                    #58.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN2:
        andq      $-128, %rsp                                   #58.1
..LN3:
        pushq     %r15                                          #58.1
..LN4:
        subq      $120, %rsp                                    #58.1
..LN5:
        movq      $0x4389d9ffe, %rsi                            #58.1
..LN6:
        movl      $3, %edi                                      #58.1
..LN7:
        call      __intel_new_feature_proc_init                 #58.1
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
..LN8:
                                # LOE rbx r12 r13 r14
..B1.49:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
..LN9:
        vstmxcsr  (%rsp)                                        #58.1
..LN10:
	.loc    1  60  is_stmt 1

###     ptrdiff_t tensorSize = TENSOR_SIZE;
###     float* src = (float*)malloc(sizeof(float)*tensorSize);

        movl      $23232, %edi                                  #60.26
..LN11:
	.loc    1  58  is_stmt 1
        orl       $32832, (%rsp)                                #58.1
..LN12:
        vldmxcsr  (%rsp)                                        #58.1
..LN13:
	.loc    1  60  is_stmt 1
#       malloc(size_t)
        call      malloc                                        #60.26
..LN14:
                                # LOE rax rbx r12 r13 r14
..B1.48:                        # Preds ..B1.49
                                # Execution count [1.00e+00]
..LN15:
        movq      %rax, %r15                                    #60.26
..LN16:
                                # LOE rbx r12 r13 r14 r15
..B1.2:                         # Preds ..B1.48
                                # Execution count [9.00e-01]
..LN17:
	.loc    1  63  is_stmt 1

###     int i = 0;
###     int j = 0;
###     for(i=0; i<tensorSize; i++){

        movq      %r15, %rsi                                    #63.5
..LN18:
        andq      $63, %rsi                                     #63.5
..LN19:
        testl     %esi, %esi                                    #63.5
..LN20:
        je        ..B1.7        # Prob 50%                      #63.5
..LN21:
                                # LOE rbx r12 r13 r14 r15 esi
..B1.3:                         # Preds ..B1.2
                                # Execution count [9.00e-01]
..LN22:
        testl     $3, %esi                                      #63.5
..LN23:
        jne       ..B1.43       # Prob 10%                      #63.5
..LN24:
                                # LOE rbx r12 r13 r14 r15 esi
..B1.4:                         # Preds ..B1.3
                                # Execution count [9.00e-01]
..LN25:
        negl      %esi                                          #63.5
..LN26:
        xorl      %ecx, %ecx                                    #63.5
..LN27:
        addl      $64, %esi                                     #63.5
..LN28:
        xorl      %eax, %eax                                    #63.5
..LN29:
        shrl      $2, %esi                                      #63.5
..LN30:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm1             #63.5
..LN31:
        movl      %esi, %edx                                    #63.5
..LN32:
        vmovdqu32 .L_2il0floatpacket.3(%rip), %zmm3             #63.5
..LN33:
	.loc    1  64  is_stmt 1

###       src[i] = 1.0 + i;

        vmovups   .L_2il0floatpacket.1(%rip), %zmm0             #64.16
..LN34:
	.loc    1  63  is_stmt 1
        vpbroadcastd %esi, %zmm2                                #63.5
..LN35:
                                # LOE rax rdx rcx rbx r12 r13 r14 r15 esi zmm0 zmm1 zmm2 zmm3
..B1.5:                         # Preds ..B1.5 ..B1.4
                                # Execution count [5.00e+00]
..LN36:
        vpcmpud   $6, %zmm3, %zmm2, %k1                         #63.5
..LN37:
        addq      $16, %rcx                                     #63.5
..LN38:
	.loc    1  64  is_stmt 1
        vcvtdq2ps %zmm3, %zmm4                                  #64.22
..LN39:
	.loc    1  63  is_stmt 1
        vpaddd    %zmm1, %zmm3, %zmm3                           #63.5
..LN40:
	.loc    1  64  is_stmt 1
        vaddps    %zmm4, %zmm0, %zmm5                           #64.22
..LN41:
        vmovups   %zmm5, (%rax,%r15){%k1}                       #64.7
..LN42:
	.loc    1  63  is_stmt 1
        addq      $64, %rax                                     #63.5
..LN43:
        cmpq      %rdx, %rcx                                    #63.5
..LN44:
        jb        ..B1.5        # Prob 82%                      #63.5
..LN45:
        jmp       ..B1.8        # Prob 100%                     #63.5
..LN46:
                                # LOE rax rdx rcx rbx r12 r13 r14 r15 esi zmm0 zmm1 zmm2 zmm3
..B1.7:                         # Preds ..B1.2
                                # Execution count [4.50e-01]
..LN47:
	.loc    1  64  is_stmt 1
        vmovups   .L_2il0floatpacket.0(%rip), %zmm1             #64.7
..LN48:
	.loc    1  63  is_stmt 1
        xorl      %edx, %edx                                    #63.5
..LN49:
	.loc    1  64  is_stmt 1
        vmovups   .L_2il0floatpacket.1(%rip), %zmm0             #64.16
..LN50:
                                # LOE rdx rbx r12 r13 r14 r15 esi zmm0 zmm1
..B1.8:                         # Preds ..B1.5 ..B1.7
                                # Execution count [9.00e-01]
..LN51:
	.loc    1  63  is_stmt 1
        movl      %esi, %eax                                    #63.5
..LN52:
        negl      %eax                                          #63.5
..LN53:
        addl      $48, %eax                                     #63.5
..LN54:
        andl      $63, %eax                                     #63.5
..LN55:
	.loc    1  64  is_stmt 1
        vpbroadcastd %esi, %zmm2                                #64.7
..LN56:
	.loc    1  63  is_stmt 1
        negl      %eax                                          #63.5
..LN57:
        addl      $5808, %eax                                   #63.5
..LN58:
	.loc    1  64  is_stmt 1
        vpaddd    .L_2il0floatpacket.3(%rip), %zmm2, %zmm2      #64.7
..LN59:
	.loc    1  63  is_stmt 1
        movl      %eax, %ecx                                    #63.5
..LN60:
                                # LOE rax rdx rcx rbx r12 r13 r14 r15 zmm0 zmm1 zmm2
..B1.9:                         # Preds ..B1.9 ..B1.8
                                # Execution count [5.00e+00]
..LN61:
	.loc    1  64  is_stmt 1
        vpaddd    %zmm1, %zmm2, %zmm6                           #64.7
..LN62:
        vcvtdq2ps %zmm2, %zmm3                                  #64.22
..LN63:
        vpaddd    %zmm1, %zmm6, %zmm9                           #64.7
..LN64:
        vcvtdq2ps %zmm6, %zmm2                                  #64.22
..LN65:
        vaddps    %zmm3, %zmm0, %zmm4                           #64.22
..LN66:
        vpaddd    %zmm1, %zmm9, %zmm12                          #64.7
..LN67:
        vcvtdq2ps %zmm9, %zmm7                                  #64.22
..LN68:
        vaddps    %zmm2, %zmm0, %zmm5                           #64.22
..LN69:
        vcvtdq2ps %zmm12, %zmm10                                #64.22
..LN70:
        vaddps    %zmm7, %zmm0, %zmm8                           #64.22
..LN71:
        vpaddd    %zmm1, %zmm12, %zmm2                          #64.7
..LN72:
        vaddps    %zmm10, %zmm0, %zmm11                         #64.22
..LN73:
        vmovups   %zmm4, (%r15,%rdx,4)                          #64.7
..LN74:
        vmovups   %zmm5, 64(%r15,%rdx,4)                        #64.7
..LN75:
        vmovups   %zmm8, 128(%r15,%rdx,4)                       #64.7
..LN76:
        vmovups   %zmm11, 192(%r15,%rdx,4)                      #64.7
..LN77:
	.loc    1  63  is_stmt 1
        addq      $64, %rdx                                     #63.5
..LN78:
        cmpq      %rcx, %rdx                                    #63.5
..LN79:
        jb        ..B1.9        # Prob 82%                      #63.5
..LN80:
                                # LOE rax rdx rcx rbx r12 r13 r14 r15 zmm0 zmm1 zmm2
..B1.11:                        # Preds ..B1.9 ..B1.43
                                # Execution count [9.00e-01]
..LN81:
        lea       1(%rax), %edx                                 #63.5
..LN82:
        cmpl      $5808, %edx                                   #63.5
..LN83:
        ja        ..B1.15       # Prob 50%                      #63.5
..LN84:
                                # LOE rax rbx r12 r13 r14 r15
..B1.12:                        # Preds ..B1.11
                                # Execution count [9.00e-01]
..LN85:
        movl      %eax, %edx                                    #63.5
..LN86:
        xorl      %ecx, %ecx                                    #63.5
..LN87:
	.loc    1  64  is_stmt 1
        vpbroadcastd %eax, %zmm0                                #64.7
..LN88:
	.loc    1  63  is_stmt 1
        negl      %edx                                          #63.5
..LN89:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm4             #63.5
..LN90:
        vmovdqu32 .L_2il0floatpacket.3(%rip), %zmm3             #63.5
..LN91:
	.loc    1  64  is_stmt 1
        vmovups   .L_2il0floatpacket.1(%rip), %zmm1             #64.16
..LN92:
        vpaddd    .L_2il0floatpacket.3(%rip), %zmm0, %zmm2      #64.7
..LN93:
	.loc    1  63  is_stmt 1
        addl      $5808, %edx                                   #63.5
..LN94:
        vpbroadcastd %edx, %zmm0                                #63.5
..LN95:
	.loc    1  64  is_stmt 1
        shlq      $2, %rax                                      #64.7
..LN96:
                                # LOE rax rbx r12 r13 r14 r15 edx ecx zmm0 zmm1 zmm2 zmm3 zmm4
..B1.13:                        # Preds ..B1.13 ..B1.12
                                # Execution count [5.00e+00]
..LN97:
	.loc    1  63  is_stmt 1
        vpcmpud   $6, %zmm3, %zmm0, %k1                         #63.5
..LN98:
        addl      $16, %ecx                                     #63.5
..LN99:
	.loc    1  64  is_stmt 1
        vcvtdq2ps %zmm2, %zmm5                                  #64.22
..LN100:
	.loc    1  63  is_stmt 1
        vpaddd    %zmm4, %zmm3, %zmm3                           #63.5
..LN101:
	.loc    1  64  is_stmt 1
        vpaddd    %zmm4, %zmm2, %zmm2                           #64.7
..LN102:
        vaddps    %zmm5, %zmm1, %zmm6                           #64.22
..LN103:
        vmovups   %zmm6, (%rax,%r15){%k1}                       #64.7
..LN104:
	.loc    1  63  is_stmt 1
        addq      $64, %rax                                     #63.5
..LN105:
        cmpl      %edx, %ecx                                    #63.5
..LN106:
        jb        ..B1.13       # Prob 82%                      #63.5
..LN107:
                                # LOE rax rbx r12 r13 r14 r15 edx ecx zmm0 zmm1 zmm2 zmm3 zmm4
..B1.15:                        # Preds ..B1.13 ..B1.11
                                # Execution count [1.00e+00]
..LN108:
	.loc    1  66  is_stmt 1

###     }
###     float* dst = (float*)malloc(sizeof(float)*tensorSize);

        movl      $23232, %edi                                  #66.26
..LN109:
        vzeroupper                                              #66.26
..LN110:
#       malloc(size_t)
        call      malloc                                        #66.26
..LN111:
                                # LOE rax rbx r12 r13 r14 r15
..B1.16:                        # Preds ..B1.15
                                # Execution count [9.00e-01]
..LN112:
	.loc    1  68  is_stmt 1

### 
###     for(i=0; i<tensorSize; i++){

        movq      %rax, %rcx                                    #68.5
..LN113:
        andq      $63, %rcx                                     #68.5
..LN114:
        movl      %ecx, %edx                                    #68.5
..LN115:
        movl      %edx, %esi                                    #68.5
..LN116:
        testl     %edx, %edx                                    #68.5
..LN117:
        je        ..B1.21       # Prob 50%                      #68.5
..LN118:
                                # LOE rax rcx rbx r12 r13 r14 r15 edx esi
..B1.17:                        # Preds ..B1.16
                                # Execution count [9.00e-01]
..LN119:
        testb     $3, %dl                                       #68.5
..LN120:
        jne       ..B1.44       # Prob 10%                      #68.5
..LN121:
                                # LOE rax rcx rbx r12 r13 r14 r15 edx
..B1.18:                        # Preds ..B1.17
                                # Execution count [9.00e-01]
..LN122:
        movl      %edx, %esi                                    #68.5
..LN123:
        xorl      %r9d, %r9d                                    #68.5
..LN124:
        negl      %esi                                          #68.5
..LN125:
        xorl      %edi, %edi                                    #68.5
..LN126:
        addl      $64, %esi                                     #68.5
..LN127:
        shrl      $2, %esi                                      #68.5
..LN128:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm3             #68.5
..LN129:
        movl      %esi, %r8d                                    #68.5
..LN130:
        vmovdqu32 .L_2il0floatpacket.3(%rip), %zmm2             #68.5
..LN131:
	.loc    1  69  is_stmt 1

###       dst[i] = 2.f*src[i];

        vmovups   .L_2il0floatpacket.2(%rip), %zmm0             #69.16
..LN132:
	.loc    1  68  is_stmt 1
        vpbroadcastd %esi, %zmm1                                #68.5
..LN133:
                                # LOE rax rcx rbx rdi r8 r9 r12 r13 r14 r15 edx esi zmm0 zmm1 zmm2 zmm3
..B1.19:                        # Preds ..B1.19 ..B1.18
                                # Execution count [5.00e+00]
..LN134:
        vpcmpud   $6, %zmm2, %zmm1, %k1                         #68.5
..LN135:
        addq      $16, %r9                                      #68.5
..LN136:
        vpaddd    %zmm3, %zmm2, %zmm2                           #68.5
..LN137:
	.loc    1  69  is_stmt 1
        vmovups   (%rdi,%r15), %zmm4{%k1}{z}                    #69.20
..LN138:
        vmulps    %zmm4, %zmm0, %zmm5                           #69.20
..LN139:
        vmovups   %zmm5, (%rdi,%rax){%k1}                       #69.7
..LN140:
	.loc    1  68  is_stmt 1
        addq      $64, %rdi                                     #68.5
..LN141:
        cmpq      %r8, %r9                                      #68.5
..LN142:
        jb        ..B1.19       # Prob 82%                      #68.5
..LN143:
        jmp       ..B1.22       # Prob 100%                     #68.5
..LN144:
                                # LOE rax rcx rbx rdi r8 r9 r12 r13 r14 r15 edx esi zmm0 zmm1 zmm2 zmm3
..B1.21:                        # Preds ..B1.16
                                # Execution count [4.50e-01]
..LN145:
	.loc    1  69  is_stmt 1
        vmovups   .L_2il0floatpacket.2(%rip), %zmm0             #69.16
..LN146:
	.loc    1  68  is_stmt 1
        movq      %rcx, %r8                                     #68.5
..LN147:
                                # LOE rax rcx rbx r8 r12 r13 r14 r15 edx esi zmm0
..B1.22:                        # Preds ..B1.19 ..B1.21
                                # Execution count [9.00e-01]
..LN148:
        negl      %esi                                          #68.5
..LN149:
        addl      $48, %esi                                     #68.5
..LN150:
        andl      $63, %esi                                     #68.5
..LN151:
        negl      %esi                                          #68.5
..LN152:
        addl      $5808, %esi                                   #68.5
..LN153:
        movl      %esi, %edi                                    #68.5
..LN154:
                                # LOE rax rcx rbx rdi r8 r12 r13 r14 r15 edx esi zmm0
..B1.23:                        # Preds ..B1.23 ..B1.22
                                # Execution count [5.00e+00]
..LN155:
	.loc    1  69  is_stmt 1
        vmulps    (%r15,%r8,4), %zmm0, %zmm1                    #69.20
..LN156:
        vmulps    64(%r15,%r8,4), %zmm0, %zmm2                  #69.20
..LN157:
        vmulps    128(%r15,%r8,4), %zmm0, %zmm3                 #69.20
..LN158:
        vmulps    192(%r15,%r8,4), %zmm0, %zmm4                 #69.20
..LN159:
        vmovups   %zmm1, (%rax,%r8,4)                           #69.7
..LN160:
        vmovups   %zmm2, 64(%rax,%r8,4)                         #69.7
..LN161:
        vmovups   %zmm3, 128(%rax,%r8,4)                        #69.7
..LN162:
        vmovups   %zmm4, 192(%rax,%r8,4)                        #69.7
..LN163:
	.loc    1  68  is_stmt 1
        addq      $64, %r8                                      #68.5
..LN164:
        cmpq      %rdi, %r8                                     #68.5
..LN165:
        jb        ..B1.23       # Prob 82%                      #68.5
..LN166:
                                # LOE rax rcx rbx rdi r8 r12 r13 r14 r15 edx esi zmm0
..B1.25:                        # Preds ..B1.23 ..B1.44
                                # Execution count [9.00e-01]
..LN167:
        lea       1(%rsi), %edi                                 #68.5
..LN168:
        cmpl      $5808, %edi                                   #68.5
..LN169:
        ja        ..B1.29       # Prob 50%                      #68.5
..LN170:
                                # LOE rax rcx rbx r12 r13 r14 r15 edx esi
..B1.26:                        # Preds ..B1.25
                                # Execution count [9.00e-01]
..LN171:
        movl      %esi, %edi                                    #68.5
..LN172:
        xorl      %r8d, %r8d                                    #68.5
..LN173:
        negl      %edi                                          #68.5
..LN174:
        addl      $5808, %edi                                   #68.5
..LN175:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm3             #68.5
..LN176:
        vmovdqu32 .L_2il0floatpacket.3(%rip), %zmm2             #68.5
..LN177:
	.loc    1  69  is_stmt 1
        vmovups   .L_2il0floatpacket.2(%rip), %zmm1             #69.16
..LN178:
	.loc    1  68  is_stmt 1
        vpbroadcastd %edi, %zmm0                                #68.5
..LN179:
                                # LOE rax rcx rbx r12 r13 r14 r15 edx esi edi r8d zmm0 zmm1 zmm2 zmm3
..B1.27:                        # Preds ..B1.27 ..B1.26
                                # Execution count [5.00e+00]
..LN180:
        vpcmpud   $6, %zmm2, %zmm0, %k1                         #68.5
..LN181:
	.loc    1  69  is_stmt 1
        lea       (%rsi,%r8), %r9d                              #69.20
..LN182:
	.loc    1  68  is_stmt 1
        vpaddd    %zmm3, %zmm2, %zmm2                           #68.5
..LN183:
	.loc    1  69  is_stmt 1
        movslq    %r9d, %r9                                     #69.20
..LN184:
	.loc    1  68  is_stmt 1
        addl      $16, %r8d                                     #68.5
..LN185:
	.loc    1  69  is_stmt 1
        vmovups   (%r15,%r9,4), %zmm4{%k1}{z}                   #69.20
..LN186:
        vmulps    %zmm4, %zmm1, %zmm5                           #69.20
..LN187:
        vmovups   %zmm5, (%rax,%r9,4){%k1}                      #69.7
..LN188:
	.loc    1  68  is_stmt 1
        cmpl      %edi, %r8d                                    #68.5
..LN189:
        jb        ..B1.27       # Prob 82%                      #68.5
..LN190:
                                # LOE rax rcx rbx r12 r13 r14 r15 edx esi edi r8d zmm0 zmm1 zmm2 zmm3
..B1.29:                        # Preds ..B1.27 ..B1.25
                                # Execution count [9.00e-01]
..LN191:
	.loc    1  74  is_stmt 1

###     }
###     float* y = dst;
###     float* x = src;
###     #pragma vector always
###     for (i=0; i<tensorSize; i++) {

        testl     %edx, %edx                                    #74.5
..LN192:
        je        ..B1.35       # Prob 50%                      #74.5
..LN193:
                                # LOE rax rcx rbx r12 r13 r14 edx
..B1.30:                        # Preds ..B1.29
                                # Execution count [9.00e-01]
..LN194:
        testb     $3, %dl                                       #74.5
..LN195:
        jne       ..B1.45       # Prob 10%                      #74.5
..LN196:
                                # LOE rax rbx r12 r13 r14 edx
..B1.31:                        # Preds ..B1.30
                                # Execution count [9.00e-01]
..LN197:
        negl      %edx                                          #74.5
..LN198:
        xorl      %edi, %edi                                    #74.5
..LN199:
        addl      $64, %edx                                     #74.5
..LN200:
        movq      %rax, %rsi                                    #74.5
..LN201:
        shrl      $2, %edx                                      #74.5
..LN202:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm2             #74.5
..LN203:
        movl      %edx, %ecx                                    #74.5
..LN204:
        vmovdqu32 .L_2il0floatpacket.3(%rip), %zmm1             #74.5
..LN205:
        vpbroadcastd %edx, %zmm0                                #74.5
..LN206:
                                # LOE rax rcx rbx rsi rdi r12 r13 r14 edx zmm0 zmm1 zmm2
..B1.32:                        # Preds ..B1.32 ..B1.31
                                # Execution count [5.00e+00]
..LN207:
        vpcmpud   $6, %zmm1, %zmm0, %k1                         #74.5
..LN208:
        addq      $16, %rdi                                     #74.5
..LN209:
        vpaddd    %zmm2, %zmm1, %zmm1                           #74.5
..LN210:
	.loc    1  77  is_stmt 1

###       y = dst + i;
###       x = dst + i;
###       *y = *y + *x;

        vmovups   (%rsi), %zmm3{%k1}{z}                         #77.13
..LN211:
        vaddps    %zmm3, %zmm3, %zmm4                           #77.18
..LN212:
        vmovups   %zmm4, (%rsi){%k1}                            #77.8
..LN213:
	.loc    1  74  is_stmt 1
        addq      $64, %rsi                                     #74.5
..LN214:
        cmpq      %rcx, %rdi                                    #74.5
..LN215:
        jb        ..B1.32       # Prob 82%                      #74.5
..LN216:
                                # LOE rax rcx rbx rsi rdi r12 r13 r14 edx zmm0 zmm1 zmm2
..B1.35:                        # Preds ..B1.29 ..B1.32
                                # Execution count [9.00e-01]
..LN217:
        negl      %edx                                          #74.5
..LN218:
        addl      $48, %edx                                     #74.5
..LN219:
        andl      $63, %edx                                     #74.5
..LN220:
        negl      %edx                                          #74.5
..LN221:
        addl      $5808, %edx                                   #74.5
..LN222:
        movl      %edx, %esi                                    #74.5
..LN223:
                                # LOE rax rcx rbx rsi r12 r13 r14 edx
..B1.36:                        # Preds ..B1.36 ..B1.35
                                # Execution count [5.00e+00]
..LN224:
	.loc    1  77  is_stmt 1
        vmovups   (%rax,%rcx,4), %zmm0                          #77.13
..LN225:
        vmovups   64(%rax,%rcx,4), %zmm2                        #77.13
..LN226:
        vmovups   128(%rax,%rcx,4), %zmm4                       #77.13
..LN227:
        vmovups   192(%rax,%rcx,4), %zmm6                       #77.13
..LN228:
        vaddps    %zmm0, %zmm0, %zmm1                           #77.18
..LN229:
        vaddps    %zmm2, %zmm2, %zmm3                           #77.18
..LN230:
        vaddps    %zmm4, %zmm4, %zmm5                           #77.18
..LN231:
        vaddps    %zmm6, %zmm6, %zmm7                           #77.18
..LN232:
        vmovups   %zmm1, (%rax,%rcx,4)                          #77.8
..LN233:
        vmovups   %zmm3, 64(%rax,%rcx,4)                        #77.8
..LN234:
        vmovups   %zmm5, 128(%rax,%rcx,4)                       #77.8
..LN235:
        vmovups   %zmm7, 192(%rax,%rcx,4)                       #77.8
..LN236:
	.loc    1  74  is_stmt 1
        addq      $64, %rcx                                     #74.5
..LN237:
        cmpq      %rsi, %rcx                                    #74.5
..LN238:
        jb        ..B1.36       # Prob 82%                      #74.5
..LN239:
                                # LOE rax rcx rbx rsi r12 r13 r14 edx
..B1.38:                        # Preds ..B1.36 ..B1.45
                                # Execution count [9.00e-01]
..LN240:
        lea       1(%rdx), %ecx                                 #74.5
..LN241:
        cmpl      $5808, %ecx                                   #74.5
..LN242:
        ja        ..B1.42       # Prob 50%                      #74.5
..LN243:
                                # LOE rax rbx r12 r13 r14 edx
..B1.39:                        # Preds ..B1.38
                                # Execution count [9.00e-01]
..LN244:
        movl      %edx, %ecx                                    #74.5
..LN245:
        xorl      %esi, %esi                                    #74.5
..LN246:
        negl      %ecx                                          #74.5
..LN247:
        addl      $5808, %ecx                                   #74.5
..LN248:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm2             #74.5
..LN249:
        vmovdqu32 .L_2il0floatpacket.3(%rip), %zmm1             #74.5
..LN250:
        vpbroadcastd %ecx, %zmm0                                #74.5
..LN251:
                                # LOE rax rbx r12 r13 r14 edx ecx esi zmm0 zmm1 zmm2
..B1.40:                        # Preds ..B1.40 ..B1.39
                                # Execution count [5.00e+00]
..LN252:
        vpcmpud   $6, %zmm1, %zmm0, %k1                         #74.5
..LN253:
	.loc    1  75  is_stmt 1
        lea       (%rdx,%rsi), %edi                             #75.11
..LN254:
	.loc    1  74  is_stmt 1
        vpaddd    %zmm2, %zmm1, %zmm1                           #74.5
..LN255:
	.loc    1  75  is_stmt 1
        movslq    %edi, %rdi                                    #75.11
..LN256:
	.loc    1  74  is_stmt 1
        addl      $16, %esi                                     #74.5
..LN257:
	.loc    1  77  is_stmt 1
        vmovups   (%rax,%rdi,4), %zmm3{%k1}{z}                  #77.13
..LN258:
        vaddps    %zmm3, %zmm3, %zmm4                           #77.18
..LN259:
        vmovups   %zmm4, (%rax,%rdi,4){%k1}                     #77.8
..LN260:
	.loc    1  74  is_stmt 1
        cmpl      %ecx, %esi                                    #74.5
..LN261:
        jb        ..B1.40       # Prob 82%                      #74.5
..LN262:
                                # LOE rax rbx r12 r13 r14 edx ecx esi zmm0 zmm1 zmm2
..B1.42:                        # Preds ..B1.40 ..B1.38
                                # Execution count [1.00e+00]
..LN263:
	.loc    1  79  is_stmt 1

###     }
### }

        vzeroupper                                              #79.1
..LN264:
        xorl      %eax, %eax                                    #79.1
..LN265:
        addq      $120, %rsp                                    #79.1
	.cfi_restore 15
..LN266:
        popq      %r15                                          #79.1
..LN267:
        movq      %rbp, %rsp                                    #79.1
..LN268:
        popq      %rbp                                          #79.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN269:
        ret                                                     #79.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
..LN270:
                                # LOE
..B1.43:                        # Preds ..B1.3
                                # Execution count [9.00e-02]: Infreq
..LN271:
	.loc    1  63  is_stmt 1
        xorl      %eax, %eax                                    #63.5
..LN272:
        jmp       ..B1.11       # Prob 100%                     #63.5
..LN273:
                                # LOE rax rbx r12 r13 r14 r15
..B1.44:                        # Preds ..B1.17
                                # Execution count [9.00e-02]: Infreq
..LN274:
	.loc    1  68  is_stmt 1
        xorl      %esi, %esi                                    #68.5
..LN275:
        jmp       ..B1.25       # Prob 100%                     #68.5
..LN276:
                                # LOE rax rcx rbx r12 r13 r14 r15 edx esi
..B1.45:                        # Preds ..B1.30
                                # Execution count [9.00e-02]: Infreq
..LN277:
	.loc    1  74  is_stmt 1
        xorl      %edx, %edx                                    #74.5
..LN278:
        jmp       ..B1.38       # Prob 100%                     #74.5
        .align    16,0x90
	.cfi_endproc
..LN279:
                                # LOE rax rbx r12 r13 r14 edx
..LN280:
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.281:
.LNmain:
	.data
# -- End  main
	.text
.L_2__routine_start_SearchingIndex16_1:
# -- Begin  SearchingIndex16
	.text
# mark_begin;
       .align    16,0x90
	.globl SearchingIndex16
# --- SearchingIndex16(int, int *, long *, int, long *)
SearchingIndex16:
# parameter 1(index): %edi
# parameter 2(offset): %rsi
# parameter 3(stride): %rdx
# parameter 4(dim): %ecx
# parameter 5(size): %r8
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]

### {

	.cfi_startproc
..___tag_value_SearchingIndex16.14:
..L15:
                                                         #15.1
..LN282:
	.loc    1  15  is_stmt 1
        pushq     %rbp                                          #15.1
	.cfi_def_cfa_offset 16
..LN283:
        movq      %rsp, %rbp                                    #15.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN284:
        andq      $-64, %rsp                                    #15.1
..LN285:
        subq      $128, %rsp                                    #15.1
..LN286:
        movl      %ecx, %r9d                                    #15.1
..LN287:
        movq      %rdx, %rcx                                    #15.1
..LN288:
	.loc    1  18  is_stmt 1

###   int i = 0;
###   int j = 0;
###   int rem[16] = {0};

        vpxord    %zmm0, %zmm0, %zmm0                           #18.15
..LN289:
        vmovups   %zmm0, (%rsp)                                 #18.15
..LN290:
                                # LOE rcx rbx rsi r8 r12 r13 r14 r15 edi r9d zmm0
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
..LN291:
	.loc    1  19  is_stmt 1

###   int quot[16] = {0};

        vmovups   %zmm0, (%rsp)                                 #19.16
..LN292:
                                # LOE rcx rbx rsi r8 r12 r13 r14 r15 edi r9d zmm0
..B2.3:                         # Preds ..B2.2
                                # Execution count [1.00e+00]
..LN293:
	.loc    1  20  is_stmt 1

###   int lineIndex[16] = {0};

        vmovups   %zmm0, (%rsp)                                 #20.21
..LN294:
                                # LOE rcx rbx rsi r8 r12 r13 r14 r15 edi r9d
..B2.4:                         # Preds ..B2.3
                                # Execution count [1.00e+00]
..LN295:
	.loc    1  22  is_stmt 1

###   for(j =0; j < 16; j++) {
###     lineIndex[j] =  index+j;

        vpbroadcastd %edi, %zmm0                                #22.27
..LN296:
	.loc    1  16  is_stmt 1
        movl      %r9d, %edi                                    #16.9
..LN297:
	.loc    1  24  is_stmt 1

###   }
###   for(i = dim-1; i >= 0; --i) {

        xorl      %edx, %edx                                    #24.3
..LN298:
	.loc    1  16  is_stmt 1
        xorl      %eax, %eax                                    #16.9
..LN299:
        decl      %edi                                          #16.9
..LN300:
	.loc    1  22  is_stmt 1
        vpaddd    .L_2il0floatpacket.3(%rip), %zmm0, %zmm17     #22.27
..LN301:
	.loc    1  24  is_stmt 1
        js        ..B2.8        # Prob 2%                       #24.23
..LN302:
                                # LOE rax rdx rcx rbx rsi r8 r12 r13 r14 r15 r9d zmm17
..B2.5:                         # Preds ..B2.4
                                # Execution count [9.79e-01]
..LN303:
	.loc    1  26  is_stmt 1

### 
###     int sz = size[i];

        movslq    %r9d, %r9                                     #26.14
..LN304:
	.loc    1  22  is_stmt 1
        vmovdqu32 %zmm17, (%rsp)                                #22.5
..LN305:
	.loc    1  43  is_stmt 1

###     int st = stride[i];
###     #pragma vector always
###     for(j=0; j < 16; j++){
###       quot[j] = lineIndex[j]/sz;
###     }
###     #pragma vector always 
###     for(j=0; j < 16; j++){
###       rem[j] = lineIndex[j]-quot[j]*sz;
###     }
### 
###     #pragma vector always
###     for(j=0; j < 16; j++){
###       lineIndex[j] =  quot[j];
###     }
###     #pragma vector always
###     for(j=0; j < 16; j++){
###       offset[j] += rem[j]*st;

        vmovups   (%rsi), %zmm16                                #43.7
..LN306:
        movq      %r12, 64(%rsp)                                #43.7[spill]
..LN307:
	.loc    1  27  is_stmt 1
        lea       (%rcx,%r9,8), %rdi                            #27.14
..LN308:
	.loc    1  43  is_stmt 1
        movq      %r13, 72(%rsp)                                #43.7[spill]
..LN309:
	.loc    1  26  is_stmt 1
        lea       (%r8,%r9,8), %rcx                             #26.14
..LN310:
	.loc    1  43  is_stmt 1
        movq      %r14, 80(%rsp)                                #43.7[spill]
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xc8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd0, 0xff, 0xff, 0xff, 0x22
..LN311:
        movq      %rax, %r12                                    #43.7
..LN312:
        movq      %r15, 88(%rsp)                                #43.7[spill]
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
..LN313:
        movq      %rdx, %r13                                    #43.7
..LN314:
        movq      %rbx, 96(%rsp)                                #43.7[spill]
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
..LN315:
        movq      %rcx, %r14                                    #43.7
..LN316:
        movq      %r9, %rbx                                     #43.7
..LN317:
                                # LOE rbx rsi rdi r12 r13 r14 zmm16 zmm17
..B2.6:                         # Preds ..B2.11 ..B2.5
                                # Execution count [5.44e+00]
..LN318:
	.loc    1  26  is_stmt 1
        vpbroadcastd -8(%r14,%r12,8), %zmm18                    #26.12
..LN319:
	.loc    1  30  is_stmt 1
        vmovaps   %zmm17, %zmm0                                 #30.30
..LN320:
        vmovaps   %zmm18, %zmm1                                 #30.30
..LN321:
	.loc    1  27  is_stmt 1
        movl      -8(%rdi,%r12,8), %r15d                        #27.14
..LN322:
	.loc    1  30  is_stmt 1
        call      __svml_idiv16                                 #30.7
..LN323:
                                # LOE rbx rsi rdi r12 r13 r14 r15d zmm0 zmm16 zmm17 zmm18
..B2.11:                        # Preds ..B2.6
                                # Execution count [5.44e+00]
..LN324:
	.loc    1  27  is_stmt 1
        vpbroadcastd %r15d, %zmm1                               #27.12
..LN325:
	.loc    1  24  is_stmt 1
        incq      %r13                                          #24.3
..LN326:
        decq      %r12                                          #24.3
..LN327:
	.loc    1  34  is_stmt 1
        vpmulld   %zmm0, %zmm18, %zmm18                         #34.37
..LN328:
        vpsubd    %zmm18, %zmm17, %zmm2                         #34.16
..LN329:
	.loc    1  39  is_stmt 1
        vmovaps   %zmm0, %zmm17                                 #39.7
..LN330:
	.loc    1  43  is_stmt 1
        vpmulld   %zmm2, %zmm1, %zmm3                           #43.27
..LN331:
        vpaddd    %zmm3, %zmm16, %zmm16                         #43.7
..LN332:
	.loc    1  24  is_stmt 1
        cmpq      %rbx, %r13                                    #24.3
..LN333:
        jb        ..B2.6        # Prob 82%                      #24.3
..LN334:
                                # LOE rbx rsi rdi r12 r13 r14 zmm16 zmm17
..B2.7:                         # Preds ..B2.11
                                # Execution count [9.79e-01]
..LN335:
        movq      64(%rsp), %r12                                #[spill]
	.cfi_restore 12
..LN336:
        movq      72(%rsp), %r13                                #[spill]
	.cfi_restore 13
..LN337:
        movq      80(%rsp), %r14                                #[spill]
	.cfi_restore 14
..LN338:
        movq      88(%rsp), %r15                                #[spill]
	.cfi_restore 15
..LN339:
        movq      96(%rsp), %rbx                                #[spill]
	.cfi_restore 3
..LN340:
	.loc    1  43  is_stmt 1
        vmovdqu32 %zmm16, (%rsi)                                #43.7
..LN341:
                                # LOE rbx r12 r13 r14 r15
..B2.8:                         # Preds ..B2.4 ..B2.7
                                # Execution count [1.00e+00]
..LN342:
	.loc    1  46  is_stmt 1

###     }
###   }
### }

        vzeroupper                                              #46.1
..LN343:
        movq      %rbp, %rsp                                    #46.1
..LN344:
        popq      %rbp                                          #46.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN345:
        ret                                                     #46.1
        .align    16,0x90
	.cfi_endproc
..LN346:
                                # LOE
..LN347:
# mark_end;
	.type	SearchingIndex16,@function
	.size	SearchingIndex16,.-SearchingIndex16
..LNSearchingIndex16.348:
.LNSearchingIndex16:
	.data
# -- End  SearchingIndex16
	.text
.L_2__routine_start_Sigmoid_2:
# -- Begin  Sigmoid
	.text
# mark_begin;
       .align    16,0x90
	.globl Sigmoid
# --- Sigmoid(float *__restrict__, float *__restrict__)
Sigmoid:
# parameter 1(x): %rdi
# parameter 2(y): %rsi
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]

### void Sigmoid( float* __restrict__ x,  float* __restrict__ y){

	.cfi_startproc
..___tag_value_Sigmoid.32:
..L33:
                                                         #49.61
..LN349:
	.loc    1  49  is_stmt 1
        pushq     %rbp                                          #49.61
	.cfi_def_cfa_offset 16
..LN350:
        movq      %rsp, %rbp                                    #49.61
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN351:
        andq      $-64, %rsp                                    #49.61
..LN352:
	.loc    1  53  is_stmt 1

###   int j = 0;
###   #pragma vector always
###   for(j=0; j < 16; j++){
###     y[j] = 1.f / (1.f + expf(-x[j]));

        vmovups   (%rdi), %zmm0                                 #53.31
..LN353:
        vpxord    .L_2il0floatpacket.4(%rip){1to16}, %zmm0, %zmm0 #53.31
..LN354:
        call      __svml_expf16                                 #53.25
..LN355:
                                # LOE rbx rsi r12 r13 r14 r15 zmm0
..B3.4:                         # Preds ..B3.1
                                # Execution count [1.00e+00]
..LN356:
        vaddps    .L_2il0floatpacket.1(%rip), %zmm0, %zmm1      #53.25
..LN357:
        vrcp14ps  %zmm1, %zmm2                                  #53.25
..LN358:
        vmulps    %zmm1, %zmm2, %zmm4                           #53.25
..LN359:
        vaddps    %zmm2, %zmm2, %zmm3                           #53.25
..LN360:
        vfnmadd213ps %zmm3, %zmm2, %zmm4                        #53.25
..LN361:
        vmovups   %zmm4, (%rsi)                                 #53.5
..LN362:
	.loc    1  55  is_stmt 1

###   }
### }

        vzeroupper                                              #55.1
..LN363:
        movq      %rbp, %rsp                                    #55.1
..LN364:
        popq      %rbp                                          #55.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN365:
        ret                                                     #55.1
        .align    16,0x90
	.cfi_endproc
..LN366:
                                # LOE
..LN367:
# mark_end;
	.type	Sigmoid,@function
	.size	Sigmoid,.-Sigmoid
..LNSigmoid.368:
.LNSigmoid:
	.data
# -- End  Sigmoid
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.0:
	.long	0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,64
	.align 64
.L_2il0floatpacket.1:
	.long	0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000,0x3f800000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,64
	.align 64
.L_2il0floatpacket.2:
	.long	0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000,0x40000000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,64
	.align 64
.L_2il0floatpacket.3:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,64
	.align 4
.L_2il0floatpacket.4:
	.long	0x80000000
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,4
	.data
	.section .note.GNU-stack, ""
# End
