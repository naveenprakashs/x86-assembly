%include "io.inc"

section .data
array1 db 1,2,3,4,5

section .bss
array2 resb 5

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    xor ecx,ecx
    xor esi,esi
    xor edi,edi
    mov ecx , 5
    mov esi , array1    ; source index
    mov edi , array2    ; destination index
    cld                 ; clear the direction flag
    rep movsb           ; repeat until ecx is 0
    
    mov eax,array2      ; string to print
    xor ecx,ecx
    mov ecx,5           ; number of element to print
 print:
  PRINT_DEC 1,[eax]
  add eax , 1
  loop print
  