.model small
.stack 100h
.data 


str db 'Mystringhere$'
len equ $-str 


.code

proc main 


  mov ax,@data
  mov ds,ax
  
  mov cl,0
  
  lea si,str 
  
  a:
  cmp [si],'$'
  je break
  
  inc cl
  inc si
  
  jmp a



    
break:
endp main    
           

end main