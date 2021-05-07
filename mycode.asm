
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 



mov ax,00000h
mov bx,0FFFFh

mov al,02
mov bl,03

mov [ax],al
mov [bx],bl

div ch ;mul bh/bl/cl/ch eachtime result is store in AX register

ret




