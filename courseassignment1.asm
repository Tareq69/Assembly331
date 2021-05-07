.model small
.stack 100h

.data

.code 



main proc
        
        
        mov ax,@data
        mov ds,ax
        
        mov cx,00000h  
        mov ds,cx
        mov bx,0FFFFh
        mov ds,bx

        mov al,02
        mov bl,03

        mov [cx],al
        mov [bx],bl
endp main

end main  
    
    
    
 