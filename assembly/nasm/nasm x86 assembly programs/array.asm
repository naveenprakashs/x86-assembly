extern _printf,_scanf,_puts
segment .data
message db "hello world!", 0

section .text
global main
main:
push ebp
mov ebp , esp
continue:
push message
call _puts
push message 
call _puts
jmp continue
