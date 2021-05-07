include 'emu8086.inc'
.model small
.stack 100h

.data

x db 0

.code


main proc
    
    mov ax,@data
    mov ds,ax 
    
    mov cl,x
    
    cmp cl,0
    jg positive
    jl negative
    
    positive:
    PRINT 'Positive' 
    jmp exit
    
    negative:
    PRINT 'Negative'
    jmp exit
    
exit:    
endp main 


end main