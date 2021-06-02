include 'emu8086.inc'
.model small

.stack 100h

.data

x label byte
y db 0FFH
len db ?

str db 0FFH dup ('$')


cnt5 db ? 

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
 cmp al, 'a'
 je store1
 cmp al, 'e'
 je store2
 cmp al, 'i'
 je store3 
 cmp al, 'o'
 je store4
 cmp al, 'u'
 je store5
 cmp al, 'A'
 je store1
 cmp al, 'E'
 je store2
 cmp al, 'I'
 je store3
 cmp al, 'O'
 je store4
 cmp al, 'U'
 je store5 
  
  
 x1:
 inc si
 
 loop loop1
 jmp printres
 

 
 store1:
 inc bl
 jmp x1 
 
 store2:
 inc bh
 jmp x1
 
 store3:
 inc dl
 jmp x1
 
 store4:
 inc dh
 jmp x1 
 
 store5:
 inc cnt5 
 jmp x1
 
 printres:
 
 print 'Number of a in the given string '

 mov al,bl
 mov ah,0
 
 call print_num  
 printn '' 
 
 print 'Number of e in the given string '

 mov al,bh
 mov ah,0
 
 call print_num  
 printn ''
 
 print 'Number of i in the given string '

 mov al,dl
 mov ah,0
 
 call print_num  
 printn ''
 
 print 'Number of o in the given string '

 mov al,dh
 mov ah,0
 
 call print_num  
 printn ''
 
 print 'Number of u in the given string '

 mov al,cnt5
 mov ah,0
 
 call print_num  
 printn ''

 hlt   

define_print_num
define_print_num_uns    
define_print_string    
endp main
end main