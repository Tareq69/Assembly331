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








macro lower a
    mov al,a  
    cmp al,20h
    je save2
    add al,20h
endm lower 

macro upper b
    mov al,b
    add al,-20h
endm upper 



main proc
    
    
    mov ax,@data
    mov ds,ax
    
    
    l1:           
    lea dx,x
    mov ah,0Ah
    int 21h         
             
             
             
    lea si,str
    lea di,str1
    lea bx,str2
    mov cl,len
    mov ch,0
    
    loop1:  
    mov al,[si]
    cmp al,41h
    jge loop2
    jmp upperx
    
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
    jle upperx   
    
    
    upper1:
    mov al,[si]
    mov [di],al
    jmp x1 
    
      
    upperx:
    upper [si] 
    
     
    save1:
    mov [di],al
    jmp x1
    
    
    l2:
    lea si,str
    lea bx,str2
    mov cl,len
    mov ch,0
    
    loop5:  
    mov al,[si]
    cmp al,61h
    jge loop6
    jmp lowerx 
    
    x2:
    inc si
    inc bx 
    
    loop loop5
    jmp printres
    
   
    
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
    jle lowerx 
    
    
    
    lower1:
    mov al,[si]
    mov [bx],al
    jmp x2 


    
    lowerx:
    lower [si]
    
    save2:
    mov [bx],al
    jmp x2
    
    
    
    printres: 
    printn ' '
    mov dx,offset str1
    mov ah,09h
    int 21h        
    printn ' '        
    mov dx,offset str2
    mov ah,09h
    int 21h         
    hlt
    
      
    
define_print_string     
endp main
end main