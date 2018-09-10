%include "io.inc"

section  .data
array1 dd 1,2,3,4,5

section .bss
array2 resd 5

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
  xor eax,eax
  xor ebx,ebx
  xor ecx,ecx
  xor edx,edx
    
  cld  ;clear the direction flag
  mov esi , array1 ; source index
  mov edi , array2 ; destination index
  mov ecx, 5       ; number of elements on array for loop iteration
  
  copy:
  lodsd
  stosd
  loop copy
  
 xor ecx,ecx
 xor ecx,5
 mov eax,array2
 print:
  PRINT_DEC 4,[eax]
  add eax,4
  loop print
  
  nop
  nop