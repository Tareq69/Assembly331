.model small
.stack 100h

.data
  number db 0FFh 
  count db 0
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov bl,number
    mov ch,08
    mov cl,0
    mov bh,0
    
    loop1:
    cmp cl,ch
    je exit
    rol bl,1
    jnc countzero
    inc cl
    jmp loop1
    
    countzero:
    inc bh  
    inc cl
    mov count,bh
    jmp loop1
     
exit:     
endp main

end main
