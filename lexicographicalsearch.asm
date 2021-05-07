include 'emu8086.inc'
.model small
.stack 100h

.data 


x lABEL BYTE                  ; this part is done with the help of a tutorital from internet
y db 0FFH
len db ?
str db 0FFH dup  ('$')   


z LABEL BYTE                  ;  this part is done with the help of a tutorital from internet
t db 0FFH 
len1 db ?
str1 db 0FFH dup ('$')  

.code


main proc
    
        
    mov ax,@data
    mov ds,ax 
    
    
    lea dx,x
    mov ah,0Ah
    int 21h 
    
    printn ''
    
    lea dx,z
    mov ah,0Ah
    int 21h
    
    printn ''
    
    
    lea si,str
    lea di,str1
    mov cl,len
    mov ch,0
    
    
    check:                ; checking whether the strings are same or not
    mov al,[si]
    cmp [di],al
    jne notsame
    inc si
    inc di
    loop check   
    
    
   
    same:
    print 'They are the same'
    hlt
    
    notsame:
    lea si,str
    lea di,str1
    
    mov cl,len
    mov ch,0
    
    check1:                 ; checking which one is larger in dictionary order
    mov al,[si]
    cmp [di],al
    jg l1
    inc si
    inc di
    loop check1
    
    mov dx,offset str
    mov ah,09
    int 21h
    hlt
    
    l1:
    mov dx,offset str1
    mov ah,09
    int 21h
    hlt
    
    
    
define_print_string        
endp main
end main