.model small
.stack 100h

.data
    result db 0
.code

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov bl,al
    
    mov al,02
    
    mov bl,al
    
    
    
    mov cl,02
    mul al
              
    
      
    mov al,bl
    
    mov cl,04
    mul al
              
    mov bl,al
    mov result,bl  
    
    
    mov al,bl
    
    mov cl,08h
    mul al  
    mov bl,al
    mov result,bl
              
   ; mov bl,al
    ;mov result,bl
    
    
      
   ; mov al,02
    
   ; mov cl,08
   ; mul al
              
   ; mov bl,al 
    
      
    ;mov al,02
    
   ; mov cl,16
   ; mul al
       
    
    
    
    
exit:     
endp main

end main
