; MASM
; ----------------------------------------------------------------------------------------

; .386
; .model flat
;
; .data
; num1          dword   11111111h
; num2          dword   10101010h
; ans           dword   0
;
; .code
; start proc
;       mov eax,num1
;       mov eax,num2
;       mov ans,eax
;
;       ret
; start endp
; end   start

; NASM
; ----------------------------------------------------------------------------------------

        global  _start

        section .text
_start:
        mov eax,[num1]
        add eax,[num2]
        mov [ans],eax        
        ; Exit program
        mov     eax, 60                 ; system call for exit
        xor     edi, edi                ; exit code 0
        syscall                         ; invoke operating system to exit

        section .data
num1:   dd   11111111h
num2:   dd   10101010h
ans :   dd   0
