%include "io.inc"

; THIS program Contains floating point stores instructions

section .data
float1 dd 0x00000001

section .bss
f1 resd 1

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    fld dword [float1]         ; stores float1 in TOS
    fst dword [f1]             ; stores TOS in f1 , TOS value remains in stack
    fstp dword [f1]            ; stores TOS in f1, POP's out TOS
    fld dword [float1]         ; stores float1 in TOS
    fist dword [f1]            ; converts float to  integer and saves to memory
    fistp dword [f1]           ; converts float to integer and saves to memory and POP's out TOS
    fld dword [float1]         ; stores float1 in TOS
    fld dword [float1]         ; stores float1 in TOS
    fld dword [float1+1]       ; stores float1 in TOS
    fxch ST2                   ; exchanges ST2 with ST0
    nop
    nop
    xor eax, eax
    ret