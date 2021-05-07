.model small
.stack 100h

.data

str1 db 'Hello World.$'
str2 db 'Welcome$'   
len equ $-str1
  

arr db 25 dup (?)

.code



main proc
 


    mov ax,@data
    mov ds,ax 
    
    
    lea si,str1
    
    
    lea di,arr
    
    
    
    process1:
    cmp [si],'$'
    je process2
    mov al,[si]
    mov [di],al
    inc si
    inc di 
    jmp process1 
    
    process2:
    
    lea si,str2 
    loop2:
    cmp [si],'$'
    je exit
    mov al,[si]
    mov [di],al
    inc si
    inc di
    
    jmp loop2
    
    
    
   exit:
   endp main

end main
