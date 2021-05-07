.model small
.stack 100h
.data 


x db 5,2,6
  db 8,3,6
  db 9,0,1
  db 7,5,6 
    
trn db 4 dup (?)
    db 4 dup (?)
    db 4 dup (?)



.code



main proc 
    
    mov ax,@data
    mov ds,ax
    lea di,trn
    lea si,x
    mov dx,2
    mov cx,12
    some:
    
    mov al,[si]
    mov [di],al
    add di,4
    inc si 
    inc dx
    mov cx,dx
    some1:
    mov al,[si] 
    mov [di],al
    add di,4
    inc si
    loop some1
    lea di,trn
    inc di
   loop some 
    
    

    
        
endp main
end main