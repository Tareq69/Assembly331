include 'emu8086.inc'
.model small
.stack 100h



.data   


x label byte
y db 0FFH
len db ?   
str db 0FFH dup ('$')
 

str1 db 0FFH dup ('$') 
str2 db 0FFH dup ('$')

.code




  
        macro m1 a
        mov al,a
        cmp al,41h
        jge upper1
        
        endm m1


main proc
    
    
    mov ax,@data
    mov ds,ax
    
    
    l1: 
    
             
    lea dx,x
    mov ah,0Ah
    int 21h         
             
             
             
    lea si,str 
    lea di,str1 
    loop1:
    m1 [si]
    
    x1:
    inc si
    
    
    upper1:
    cmp al,5Ah
    jle save
    jmp x
  
    
    save:
    mov [di],al
    inc di
    jmp x1
    
define_print_string     
endp main

end main