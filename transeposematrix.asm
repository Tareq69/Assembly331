include 'emu8086.inc'
.model small
.stack 100h


.data


matrix db  5,1,8
       db  1,3,7
       db  5,1,3
       db  7,8,6



transpose db 4 dup (?)  
          db 4 dup (?) 
          db 4 dup (?) 

.code



main proc
    
    
    mov ax,@data
    mov ds,ax
    
    
    mov cx,3
    mov dx,0 
    lea di,transpose
    
    p1:
    lea si,matrix 
    add si,dx
    mov bh,4 
    p2:
    cmp bh,0 
    je x1
    mov al,[si]
    mov [di],al
    add si,3
    inc di
    dec bh
    jmp p2
    
    x1:
    inc dx
    loop p1 
    
    lea si,transpose
    mov cx,3
    
    p3:
    mov bh,4
    
    p4:
    cmp bh,0
    je x2
    mov al,[si]
    add al,30h
    mov ah,02h
    mov dl,al
    int 21h 
    inc si
    dec bh
    mov ah,02h
    mov dl, ' '
    int 21h
    jmp p4 
    x2:
    printn ' ' 
    loop p3
     
    
    
      
    
define_print_string    
endp main
end main