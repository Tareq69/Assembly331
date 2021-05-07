.model small
.stack 100h
.data 


str db 'Mystring$'
len equ $-str 

count db 0
.code

proc main 


  mov ax,@data
  mov ds,ax

  mov cx,len   
  
  lea si,str 
  

  
  p:
  
  mov al,[si]
  cmp al,'$'
  je exit
  
  jne increase
        
  x:
  inc si
        
  loop p 
  hlt

  increase:
  inc count
  jmp x

    
exit:
endp main    
           

end main