include 'emu8086.inc'
.model small
.stack 100h

.data

str db 10 dup (?)
len equ $-str

.code

main proc
    
      mov ax,@data
      mov ds,ax
      
      
      lea si,str
      mov dx,len
      call get_string
      
      printn ''
      
      mov ah,01h
      int 21h
      
      
      lea si,str
      mov cx,len 
      mov dx,0
    
      loop1:
      mov bl,[si]
      cmp al,bl
      je found
      inc si 
      inc dx
      loop loop1 
      jmp notfound
      
      found:
      mov ax,dx
      printn ''
      print 'Character found'
      printn ''
      call print_num
      hlt
      
      notfound:
      printn ''
      print 'Character not found'
      hlt
    
       
    
define_get_string  
define_print_num 
define_print_num_uns 
    
endp main
end main