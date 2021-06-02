include 'emu8086.inc'
.model small
.stack 100h
.data

.code

matrix db 4,1,9
       db 6,6,6
       db 9,1,1 
       db 7,8,6
       
transpose db 4 dup (?)  
          db 4 dup (?) 
          db 4 dup (?) 


main proc
    
    
    mov ax,@data
    mov ds,ax
    
    
    
    mov cx,3
    mov bx,0
    lea di,transpose
    
    p1:
    
    lea si,matrix
    add si,bx
    mov dh,4
    p2:
    cmp dh,0
    je stop
    mov al,[si]
    mov [di],al
    add si,3
    inc di
    dec dh
    jmp p2
    stop:
    inc bx 
    loop p1
    
    mov cx,3
   lea si,transpose
      
     p3:
     mov dh,4
     p4:
     cmp dh,0
     je stop2
     mov al,[si]
     add al,30h
     mov ah,02h
     mov dl,al
     int 21h
     inc si
     dec dh
     mov ah,02h
     mov dl, ' '
     int 21h
     jmp p4  
     stop2:
     printn ' '
     loop p3
     hlt
          
                
      
define_print_string    
endp main
end main