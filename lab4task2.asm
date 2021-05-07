include 'emu8086.inc'
.model small
.stack 100h

.data

arr db 3,6,7,8,12
len equ $-arr

.code



main proc
    

    mov ax,@data
    mov ds,ax
    
    mov cx,len
    
    lea si,arr
    
    mov bh,6
    
    
    loop1:
    mov al,[si]
    cmp al,bh
    je found
    inc si
    
    loop loop1
    jmp notfound
              
    found:
    PRINT 'Value found!'
    jmp exit  
    
    notfound:
    PRINT 'Value not found!'
    jmp exit

    
exit:    
endp main

end main