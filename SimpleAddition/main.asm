; MASM
; ----------------------------------------------------------------------------------------

; .386
; .model flat
; .code
; start   PROC
;     mov eax, 213
;     add eax, 432
;
;     ret
; start   endp
; end     start

; NASM
; ----------------------------------------------------------------------------------------

        global  _start

        section .text
_start:
        mov     eax,213
        add     eax,432
        
        ; Exit program
        mov     eax, 60                 ; system call for exit
        xor     edi, edi                ; exit code 0
        syscall                         ; invoke operating system to exit

