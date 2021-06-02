include 'emu8086.inc'
.model small

.stack 100h



.data 

.code


    
ident proc    
    
   
    pop dx
    pop ax
    push dx
    
    
    mov ah,0
    mov bl,0
    mov bh,al
    mov cl,0
    mov ch,0 
    
    
    loop1:
    cmp bl,bh
    je exit
    loop2:
    cmp cl,bh
    je z
    cmp ah,ch
    je print1
    jmp print2
    print1:   
    print '1'
    
    x:
    inc cl
    inc ah 
    jmp loop2
    
    print2:   
    print '0'
    jmp x 
    
    z:
    printn ''   
    inc bl
    mov ah,0
    mov cl,0
    inc ch   
    jmp loop1
    ret 
  
endp ident  


main proc

    mov ax,@data
    mov ds,ax

     
    mov ah,01h 
    int 21h
   
    printn '' 
    
    sub al,30h
    mov ah,0
    push ax
    
    call ident

define_print_string    
exit:    
endp main
end main