.model small
.stack 100h

.data
res db 0
.code

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov cl,100b
   
    
    test cl,1b
    je odd
    jne even
    
    even:
    mov bl,1
    mov res,bl
    jmp exit
    
    odd:
    mov bh,2
    mov res,bh
    jmp exit
     
   
 exit:
 endp main

 end main   