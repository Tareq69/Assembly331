include 'emu8086.inc'
.model small
.stack 100h



.data


x LABEL BYTE 
y db 0FFH
len db ?
str db 0FFH dup ('$')
str1 db 0FFH dup ('$')


.code



main proc
    
      
      
      
      mov ax,@data                        ; The code works for punctuation symbols ,.?!;: // not sure how to do it for a specific range
      mov ds,ax                          
                                          ; Whenever we find a word with no space after punctuation symbols we print a space ,.?!;:
                                          ; I tried to make sure we don't print space if we already we have space after the punctuation
                                          ; symbol but it's not working
      lea dx,x
      mov ah,0Ah
      int 21h
      
      printn ''
      
      lea si,str
      lea di,str1 
      
      mov cl,len
      mov ch,0 
      
      
      
      
      
      
      change:
      mov bl,[si]
      cmp bl,','
      je c
      cmp bl,'!'
      je d
      cmp bl,';'
      je e
      cmp bl,':'
      je f
      cmp bl,'?'
      je g
      cmp bl,'.'
      je k 
      mov [di],bl  
      
      x1:
      inc si
      inc di
      
        
      
      loop change
      jmp z
       
      x2:
      inc si 
      mov [di],' '
      jmp x1 
      
      c: 
      mov [di],','
      inc di
      mov ah, ' '
      cmp [di],ah
      je x2
      mov [di], ' '
      jmp x1 
      
      d: 
      mov [di],'!'
      inc di
      mov ah, ' '
      cmp [di],ah
      je x2
      mov [di], ' '
      jmp x1
      
      e: 
      mov [di],';'
      inc di
      mov ah, ' '
      cmp [di],ah
      je x2
      mov [di], ' '
      jmp x1
      
      f: 
      mov [di],':'
      inc di
      mov ah, ' '
      cmp [di],ah
      je x2
      mov [di], ' '
      jmp x1
      
      g:
      mov [di],'?'
      inc di
      mov ah, ' '
      cmp [di],ah
      je x2
      mov [di], ' '
      jmp x1
      k:
      mov [di],'.'
      inc di
      mov ah, ' '
      cmp [di],ah
      je x2
      mov [di], ' '
      jmp x1
      
      z:
      mov dx,offset str1
      mov ah,09h
      int 21h
      hlt 
      
      
      
      
      
      
      
   
define_print_string    
endp main
end main