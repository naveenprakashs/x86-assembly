#include<stdio.h>

int square(int num) 
{
   unsigned char c=1;
   if(c==1)
   {
       printf("hello world!");
   }
   return 0;
}

.LC0:
  .string "hello world!"
square:
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov DWORD PTR [rbp-20], edi

  mov BYTE PTR [rbp-1], 1

  cmp BYTE PTR [rbp-1], 1
  jne .L2
  mov edi, OFFSET FLAT:.LC0
  mov eax, 0
  call printf

.L2:
  nop
  leave
  ret