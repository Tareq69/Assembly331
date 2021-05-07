.model small
.stack 100h



.data


.code


addtwo proc
    
    add al,bl
    ret    
    
    
endp addtwo


main proc
    
     
    mov al,08
    mov bl,04
    
    call addtwo 
    
    mov dl,05 
     
     
    
endp main
end main
