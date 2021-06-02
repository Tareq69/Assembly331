.model small
.stack 100h



.data   



str db 'Hello World$'
len equ $-str 

str1 db 20 dup (?) 
str2 db 20 dup (?)

.code




main proc
    
    
    mov ax,@data
    mov ds,ax
    
    
    l1:
    lea si,str
    lea di,str1
    lea bx,str2
    mov cx,len
    
    loop1:  
    mov al,[si]
    cmp al,41h
    jge loop2
    jmp upper2
    
    x1:
    inc si
    inc di                              
      
    
    loop loop1
    jmp l2
    
    loop2:
    mov al,[si]
    cmp al,5Ah
    jle upper1 
    mov al,[si]
    cmp al,41h
    jge loop4
    
    
    loop4:
    mov al,[si]
    cmp al,7Ah
    jle upper2   
    
    
    upper1:
    mov al,[si]
    mov [di],al
    jmp x1 
    
    upper2:
    mov al,[si]
    cmp al,20h
    je save1
    sub al,20h
    mov [di],al
    save1:
    mov [di],al
    jmp x1
    
    
    l2:
    lea si,str
    lea bx,str2
    mov cx,len
    
    loop5:  
    mov al,[si]
    cmp al,61h
    jge loop6
    jmp lower2 
    
    x2:
    inc si
    inc bx 
    
    loop loop5
    hlt
    
    loop6:
    mov al,[si]
    cmp al,7Ah
    jle lower1 
    mov al,[si]
    cmp al,41h
    jge loop8
    
  
    loop8:
    mov al,[si]
    cmp al,7Ah
    jle lower2 
    
    
    
    lower1:
    mov al,[si]
    mov [bx],al
    jmp x2 
    
    lower2:
    mov al,[si]
    cmp al,20h
    je save2
    add al,20h
    mov [bx],al
    save2:
    mov [bx],al
    jmp x2
    
     
endp main
end main