include 'emu8086.inc'
.model small
.stack 100h


.data



x label byte
y db 0FFH
len db ?

str db 0FFH dup ('$') 

z label byte
t db 0FFH
len1 db ?


str1 db 0FFH dup ('$')

.code



main proc
    
    
    mov ax,@data
    mov ds,ax
    
    mov dx,x
    mov ah,0Ah
    int 21h
    
    printn ''    
    
    mov dx,offset str
    mov ah,09h
    int 21h 
    
    
    
       
    printn ''
    
    mov dx,z
    mov ah,0Ah
    int 21h
     
    printn '' 
     
    mov dx,offset str1
    mov ah,09h
    int 21h
    printn ''
    
    mov al,len
    mov ah,0
    
    print 'Lenght of string1 is: '
    call print_num  
    
    mov al,len1
    mov ah,0
    
     print 'Lenght of string2 is: '
    call print_num 
    
define_print_num
define_print_num_uns    
define_print_string    
endp main
end main