.file "donut.c"
.text
.globl k
.bss
.align 4
.type k, @object
.size k, 4
k: .zero 4
.section .rodata
.LC1: .string "\033[2J"
.LC14: .string "\033[H"
.LC10: .string ".,-~:;=!*#$@"
.text
.globl main
.type main, @function
main: .LFB0:
.cfi_startproc
pushq %rbp
.cfi_def_cfa_offset 16
.cfi_offset 6, -16
movq %rsp, %rbp
.cfi_def_cfa_register 6


                                                              subq     $8896,     %rsp;
                                                xorl %eax,       %eax;       pxor %xmm0,       %xmm0;
                                           movss %xmm0,       -8892(%rbp);        pxor %xmm0,       %xmm0;
                                       movss     %xmm0,     -8888(%rbp);      leaq      .LC1(%rip),      %rax;
                                   movq %rax, %rdi; movl $0, %eax; call printf@PLT; .L12:  leaq -1776(%rbp),%rax;
                                movl $1760,%edx; movl $32,%esi;movq %rax,%rdi;call memset@PLT; leaq -8816(%rbp),%rax;
                              movl $7040, %edx;  movl $0, %esi;  movq %rax, %rdi;  call memset@PLT;  pxor %xmm0,%xmm0;
                           movss %xmm0,-8880(%rbp); jmp .L2; .L7: pxor %xmm0,%xmm0; movss %xmm0,-8884(%rbp); jmp .L3;.L6:
                         pxor %xmm3, %xmm3;  cvtss2sd -8884(%rbp), %xmm3; movq %xmm3, %rax; movq %rax,  %xmm0; call sin@PLT;
                      cvtsd2ss %xmm0,%xmm0;movss %xmm0,-8876(%rbp);pxor %xmm4,%xmm4;cvtss2sd -8880(%rbp),%xmm4;movq %xmm4,%rax;
                    movq  %rax,  %xmm0;  call cos@PLT;  cvtsd2ss %xmm0,  %xmm0;  movss %xmm0,  -8872(%rbp);  pxor  %xmm5,  %xmm5;
                   cvtss2sd  -8892(%rbp),  %xmm5;  movq %xmm5,  %rax;  movq %rax,  %xmm0;  call sin@PLT;  cvtsd2ss  %xmm0,  %xmm0;
                 movss %xmm0,-8868(%rbp);pxor %xmm6,%xmm6; cvtss2sd -8880(%rbp),%xmm6;movq %xmm6,%rax; movq %rax,%xmm0;call sin@PLT;
               cvtsd2ss %xmm0, %xmm0;  movss %xmm0, -8864(%rbp);  pxor %xmm7,  %xmm7;  cvtss2sd -8892(%rbp), %xmm7;  movq %xmm7, %rax;
              movq %rax,%xmm0;call cos@PLT;cvtsd2ss %xmm0,%xmm0;movss %xmm0,-8860(%rbp);movss -8872(%rbp),%xmm1;movss .LC2(%rip),%xmm0;
            addss %xmm1,  %xmm0;  movss %xmm0,  -8856(%rbp); movss -8876(%rbp),  %xmm0; mulss -8856(%rbp),  %xmm0;  movaps %xmm0,  %xmm1;
           mulss -8868(%rbp), %xmm1;  movss -8864(%rbp), %xmm0;  mulss -8860(%rbp),  %xmm0;  addss %xmm0, %xmm1;  movss .LC3(%rip),%xmm0;
          addss %xmm0,%xmm1;movss .LC4(%rip), %xmm0;divss %xmm1,%xmm0;movss %xmm0,-8852(%rbp);pxor %xmm3,%xmm3;cvtss2sd -8884(%rbp),%xmm3;
         movq  %xmm3,  %rax;  movq  %rax,  %xmm0;  call cos@PLT;  cvtsd2ss  %xmm0,  %xmm0;  movss  %xmm0,  -8848(%rbp);  pxor %xmm4,  %xmm4;
        cvtss2sd -8888(%rbp),%xmm4;movq %xmm4,%rax;movq %rax,%xmm0;call cos@PLT;cvtsd2ss %xmm0,%xmm0;movss %xmm0,-8844(%rbp);pxor %xmm5,%xmm5
       cvtss2sd -8888(%rbp),  %xmm5;  movq %xmm5,  %rax;  movq %rax, %xmm0; call sin@PLT;  cvtsd2ss %xmm0,  %xmm0;  movss %xmm0,  -8840(%rbp);
      movss -8876(%rbp),%xmm0;mulss -8856(%rbp),%xmm0;mulss -8860(%rbp),%xmm0;movss -8864(%rbp),%xmm1;mulss -8868(%rbp),%xmm1;subss %xmm1,%xmm0
     movss %xmm0,-8836(%rbp); movss -8852(%rbp),%xmm1;movss .LC5                     (%rip),  %xmm0; movaps %xmm1,  %xmm2;  mulss %xmm0,  %xmm2;
    movss  -8848(%rbp),  %xmm0;  mulss  -8856(%rbp),  %xmm0;                             mulss  -8844(%rbp),  %xmm0;  movss  -8836(%rbp),  %xmm1;
   mulss -8840(%rbp),%xmm1;subss %xmm1,%xmm0;mulss %xmm0,                                   %xmm2;  movaps %xmm2, %xmm1; movss .LC6(%rip),  %xmm0;
   addss %xmm1,  %xmm0;  cvttss2sil %xmm0, %eax;  movl                                         %eax,   -8832(%rbp);   movss  -8852(%rbp),   %xmm1;
  movss .LC7(%rip), %xmm0; mulss %xmm0, %xmm1; movss                                             -8848(%rbp),  %xmm0;  mulss   -8856(%rbp),  %xmm0;
  movaps %xmm0,%xmm2; mulss -8840(%rbp),%xmm2;movss                                               -8836(%rbp),  %xmm0;  mulss  -8844(%rbp),  %xmm0;
 addss %xmm2,  %xmm0;  mulss %xmm0, %xmm1;  movss                                                   .LC8(%rip),    %xmm0;    addss  %xmm1,    %xmm0;
 cvttss2sil %xmm0, %eax; movl %eax, -8828(%rbp);                                                     movl  -8828(%rbp),   %edx;  movl   %edx,  %eax;
sall $2,%eax; addl %edx,%eax; sall $4,%eax;movl                                                       %eax,%edx;movl -8832(%rbp),%eax;addl %edx,%eax;
movl  %eax,  -8824(%rbp);  movss  -8864(%rbp),                                                         %xmm0;      mulss     -8868(%rbp),      %xmm0;
movss -8876(%rbp),  %xmm1;  mulss -8872(%rbp),                                                         %xmm1;      mulss     -8860(%rbp),      %xmm1;
subss %xmm1, %xmm0; mulss -8844(%rbp), %xmm0;                                                           movss           -8876(%rbp),           %xmm1;
mulss -8872(%rbp), %xmm1;  mulss -8868(%rbp),                                                           %xmm1;       subss        %xmm1,       %xmm0;
movss -8864(%rbp), %xmm1;  mulss -8860(%rbp),                                                           %xmm1;       subss        %xmm1,       %xmm0;
movss -8848(%rbp), %xmm1;  mulss -8872(%rbp),                                                           %xmm1;       movaps       %xmm1,       %xmm2;
mulss -8840(%rbp), %xmm2; movaps %xmm0,%xmm1;                                                           subss %xmm2, %xmm1;  movss .LC9(%rip), %xmm0;
mulss %xmm1,%xmm0; cvttss2sil %xmm0,%eax;movl                                                           %eax,  -8820(%rbp);  cmpl $21,   -8828(%rbp); 
jg .L4; cmpl $0,-8828(%rbp); jle .L4;cmpl $0,                                                           -8832(%rbp); jle .L4;  cmpl $79, -8832(%rbp);
jg .L4;movl -8824(%rbp),%eax;cltq;movss -8816(                                                         %rbp,%rax,4), %xmm1; movss -8852(%rbp), %xmm0;
comiss %xmm1,%xmm0; jbe .L4; movl -8824(%rbp),                                                         %eax;   cltq;   movss    -8852(%rbp),   %xmm0;
movss %xmm0,-8816(%rbp,%rax,4);movl -8820(%rbp)                                                       ,%eax;  movl  $0,   %edx;  testl   %eax,  %eax;
 cmovs %edx, %eax; cltq; leaq .LC10(%rip), %rdx;                                                     movzbl (%rax,%rdx),%edx; movl -8824(%rbp),%eax;
 cltq;movb %dl,-1776(%rbp,%rax); .L4: pxor %xmm1,                                                   %xmm1;     cvtss2sd      -8884(%rbp),     %xmm1;
  movsd  .LC11(%rip),  %xmm0; addsd  %xmm1,  %xmm0;                                               cvtsd2ss %xmm0,%xmm0;movss %xmm0,-8884(%rbp);.L3:
  pxor %xmm1,%xmm1; cvtss2sd -8884(%rbp),%xmm1;movsd                                             .LC12(%rip), %xmm0;  comisd %xmm1,  %xmm0; ja .L6;
   pxor %xmm1,%xmm1; cvtss2sd -8880(%rbp), %xmm1;movsd                                         .LC13(%rip),    %xmm0;    addsd    %xmm1,    %xmm0;
   cvtsd2ss %xmm0,%xmm0;movss %xmm0,-8880(%rbp);.L2: pxor                                   %xmm1,    %xmm1;    cvtss2sd    -8880(%rbp),    %xmm1;
    movsd .LC12(%rip),%xmm0; comisd %xmm1,%xmm0;ja .L7; leaq                             .LC14(%rip),  %rax;  movq  %rax,  %rdi;  movl $0,  %eax;
     call printf@PLT;movl $0,k(%rip);jmp .L8;.L11:;movl k(%rip),                     %ecx;  movslq %ecx,  %rax; imulq $1717986919,  %rax,  %rax;
      shrq $32,%rax; movl %eax,%edx; sarl $5,%edx; movl %ecx,%eax; sarl $31,%eax; subl %eax,%edx; movl %edx,%eax; sall $2,%eax; addl %edx,%eax;
       sall $4,%eax;subl %eax,%ecx;movl %ecx,%edx;testl %edx,%edx;je .L9;movl k(%rip), %eax;cltq;movzbl -1776(%rbp,%rax),%eax;movsbl %al,%eax;
        jmp .L10; .L9: movl $10, %eax; .L10:  movl %eax, %edi; call putchar@PLT; movl k(%rip), %eax; addl $1,  %eax; movl %eax, k(%rip);.L8:
         movl k(%rip),%eax;cmpl $1760,%eax;jle .L11; pxor %xmm1,%xmm1;cvtss2sd -8892(%rbp),%xmm1; movsd .LC15(%rip),%xmm0;addsd %xmm1,%xmm0;
          cvtsd2ss %xmm0,  %xmm0; movss  %xmm0, -8892(%rbp);  pxor %xmm1,  %xmm1; cvtss2sd  -8888(%rbp), %xmm1;  movsd  .LC11(%rip), %xmm0;
           addsd      %xmm1,      %xmm0;      cvtsd2ss      %xmm0,       %xmm0;      movss      %xmm0,      -8888(%rbp);      jmp     .L12
            //...........................................................................................................................
              //.......................................................................................................................
               //.....................................................................................................................
                 //.................................................................................................................
                   //.............................................................................................................
                    //.......................Sorry for all the blank space.......................................................
                      //......................I might make a better version in the future......................................
                         //....................Compile using `gcc -o donut donut.s -lc -lm`..................................
                           //...................by Rue / @IOKG04 (Github).................................................
                              //.......................................................................................
                                //...................................................................................
                                   //.............................................................................
                                       //.....................................................................
                                           //.............................................................
                                                //...................................................
                                                      //.......................................
                                                              //.......................

.cfi_endproc
.LFE0: .size main, .-main
.section .rodata
.align 4
.LC2: .long 1073741824
.align 4
.LC3: .long 1084227584
.align 4
.LC4: .long 1065353216
.align 4
.LC5: .long 1106247680
.align 4
.LC6: .long 1109393408
.align 4
.LC7: .long 1097859072
.align 4
.LC8: .long 1094713344
.align 4
.LC9: .long 1090519040
.align 8
.LC11: .long 1202590843
.long 1066695393
.align 8
.LC12: .long 1374389535
.long 1075388088
.align 8
.LC13: .long 515396076
.long 1068624773
.align 8
.LC15: .long 1202590843
.long 1067743969
.ident "GCC: (GNU) 13.2.1 20230801"
.section .note.GNU-stack,"",@progbits
