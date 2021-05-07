include 'emu8086.inc'
.model small
.stack 100h

.data



.code


main proc 
    
    mov ax,@data
    mov ds,ax 
    
   
    mov al,-50H
    mov bl,50H
    
    add al,bl
    jz storedl
    jmp storedh
    
    storedl:
    mov dl,al
    hlt
    
    storedh:
    mov dh,al
    hlt


    

exit:    
endp main  


DEFINE_PRINT_STRING
end main