; MASM
; ----------------------------------------------------------------------------------------

; x86-64bit-------------------------------------------------------------------------------
; .code
; main  proc
;       mov rax,2
;       mov rbx,3
;       mov rcx,4
;       ret
; main  endp
; end

; x86-32bit-------------------------------------------------------------------------------
; .386
; .model flat
; .code
; main  proc
;       mov eax,2
;       mov ebx,3
;       mov ecx,4
;       ret
; main  endp
; end

; 16bit-----------------------------------------------------------------------------------
; .386
; .model flat
; .code
; main  proc
;       mov ax,2
;       mov bx,3
;       mov cx,4
;       ret
; main  endp
; end


; NASM
; ----------------------------------------------------------------------------------------

        global  _start

        section .text
_start:
        ; This section is a bit modified to highlight modification by using different modes
        ; There should be remaining bits from larger modes  

        ; x86-64bit
        mov rax,0x1111111111111111
        mov rbx,0x2222222222222222
        mov rcx,0x3333333333333333

        ; x86-32bit
        mov eax,0x44444444
        mov ebx,0x55555555
        mov ecx,0x66666666

        ; ; 16bit
        mov ax,0x7777
        mov bx,0x8888
        mov cx,0x9999
        
        ; Exit program
        mov     eax, 60                 ; system call for exit
        xor     edi, edi                ; exit code 0
        syscall                         ; invoke operating system to exit