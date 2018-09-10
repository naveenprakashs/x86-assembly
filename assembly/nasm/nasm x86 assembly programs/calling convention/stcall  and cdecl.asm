%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
     push 1
     push 2
     call cdecl_add 
     sub esp , 4     ; clearing 8 bytes of parameters
                     ; caller cleans the stack parameters
     push 1
     push 2 
     call stdcall_add
     
     jmp quit
     
  cdecl_add:
  push ebp
  mov ebp , esp
  mov eax , dword [ebp+8]
  mov ebx , dword [ebp+12]
  add eax , ebx
  pop ebp
  ret
  
  stdcall_add:
   push ebp
  mov ebp , esp
  mov eax , dword [ebp+8]
  mov ebx , dword [ebp+12]
  add eax , ebx
  pop ebp
  ret 8             ; clearing 8 bytes of parameters
                    ; callee cleans the stack parameters
                    
  quit:
  nop
  nop