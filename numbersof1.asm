.model small
.stack 100h


.data

 number db 05fh
 count db 0
.code
 
 
main proc
    
    
    mov ax,@data
    mov ds,ax    
    
    mov cx,08
    mov al,number
    mov bh,0
    
    loop1:
    shr al,1
    jc inccount
    loop loop1 
    jmp exit
    
    inccount:
    inc bh 
    mov count,bh
    jmp loop1

    
    
exit:
endp     
    
    
endp main
end main

