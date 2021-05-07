.model small
.stack 100h

.data

str1 db 'Hello World,$'
str2 db 'this is assembly programming$'   
len equ $-str
  

arr db 50 dup (?) 


.code



main proc
 


    mov ax,@data
    mov ds,ax 
    
    
    lea si,str1
 
    mov cx,len
  
    lea di,arr 
    
    p:
    
    mov al,[si]
    cmp al,'$'
    je p1
    jne forstr1 
    
    x:
    inc si

    loop p  
 
    p1:
    
    lea si,str2  
    mov cx,len
    
    p2:
    mov al,[si]
    cmp al,'$'
    je exit
    jne forstr2 
    
    x1:
    inc si
    
    
    loop p2
    jmp exit
    
    putinArray macro
    mov al,[si]
    mov [di],al
    inc di
    endm putinArray
    
    
    forstr1:
    putinArray
    jmp x 
    
    forstr2:
    putinArray
    jmp x1
    

   exit:
   endp main

end main
