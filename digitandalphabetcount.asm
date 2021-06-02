include 'emu8086.inc'
.model small

.stack 100h

.data

x label byte
y db 0FFH
len db ?

str db 0FFH dup ('$')


.code



main proc
    
    
    
 mov ax,@data
 mov ds,ax
 
 mov dx,x
 mov ah,0Ah
 int 21h
 
 printn ' '
 
 
 lea si,str
 mov cl,len
 mov ch,0
 
 loop1:
 mov al,[si]
 cmp al,30h
 jge comp1
 
 x1:
 inc si
 
 loop loop1
 jmp calph
 
 comp1:
 cmp al,39h
 jle store1
 jmp x1
 
 
 store1:
 inc bl
 jmp x1 
 
 calph:
 lea si,str
 mov cl,len
 mov ch,0
 
 loop3:
 mov al,[si]
 cmp al,41h
 jge comp2
 
 x2:
 inc si
 
 loop loop3
 jmp printres
 
 comp2:
 cmp al,7Ah
 jle store2
 jmp x2
 
 store2:
 inc bh
 jmp x2    
 
 
 
 printres:
 
 print 'Number of alphabet in the given string '

 mov al,bh
 mov ah,0
 
 call print_num  
 
 printn ' '
 
 print 'Number of digit in the given string '


 mov al,bl
 mov ah,0
 call print_num  

 hlt   

define_print_num
define_print_num_uns    
define_print_string    
endp main
end main