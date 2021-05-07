.model small
.stack 100h
.data

.code

main proc
 mov ax,@data
 mov ds,ax
 
 ;mov ax,0Ah
 ;mov bx,0Ch
 
 ;mul bx 
 
 mov ax,0
 mov dx,0  
 
 mov al,06
 mov bh,03
 div bh 
    
endp main
end main
