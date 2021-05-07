.model small
.stack 100h

.data

.code

main proc
    
        
     mov ax,8080h
     mov bx,8080h
     
     add ax,bx
     jo overflow
     jmp nooverflow
     
     overflow:
     mov dx,ax
     hlt
     
     nooverflow:
     mov  cx,ax
     hlt  
        
        
        
        
        
endp main
end main