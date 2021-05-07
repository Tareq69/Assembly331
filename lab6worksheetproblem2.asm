.model small
.stack 100h


.data

 number db 01001111b
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
    inc bh      ; bh is a counter that stores number of 1
    mov count,bh ; number of 1's in the binary string is stored in this count variable
    jmp loop1

    
    
exit:
endp     
    
    
endp main
end main
