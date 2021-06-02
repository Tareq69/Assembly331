.model small
.stack 100h

.data

        
matrix db 1,2,1
       db 4,5,6
       db 7,8,9
       
       
       
arr1 db 3 dup (?)
arr2 db 3 dup (?)        
        
        
.code



main proc   
    
    
    
    
    
    mov ah,0Ah
    int 21h
    
    
    call scan_num
    
    
    
    
    
    name proc
        
        
         ret
        endp proc
            
            
           macro sum m1,m2
            
            
           endm sum
           
           sum
    
    
  mov ax,@data
  mov ds,ax  
    
  lea si,matrix
  lea di,arr1
  mov cx,3
  mov dl,0 
  mov bl,0
  loop1: 
  mov al,[si] 
  mov bl,al
  add dl,bl 
  mov [di],dl
  inc si 
  dec dh
  loop loop1

  mov cx,3
  lea si,matrix
  lea di,arr1
  inc di 
  mov dl,0
  mov bl,0
  add si,3
  loop2: 
  mov al,[si] 
  mov bl,al
  add dl,bl 
  mov [di],dl
  inc si
  loop loop2 
  
  
  mov cx,3
  lea si,matrix
  lea di,arr1
  add di,2 
  mov dl,0
  mov bl,0
  add si,6 
  
  
  loop3: 
  mov al,[si] 
  mov bl,al
  add dl,bl 
  mov [di],dl
  inc si
  loop loop3
  
  
  lea si,matrix
  lea di,arr2
  mov cx,3
  mov dl,0 
  mov bl,0
  loop4: 
  mov al,[si] 
  mov bl,al
  add dl,bl 
  mov [di],dl
  add si,3 
  dec dh
  loop loop4

  mov cx,3
  lea si,matrix
  lea di,arr2
  inc di 
  mov dl,0
  mov bl,0
  add si,1
  loop5: 
  mov al,[si] 
  mov bl,al
  add dl,bl 
  mov [di],dl
  add si,3
  loop loop5 
  
  
  mov cx,3
  lea si,matrix
  lea di,arr2
  add di,2 
  mov dl,0
  mov bl,0
  add si,2 
  
  
  loop6: 
  mov al,[si] 
  mov bl,al
  add dl,bl 
  mov [di],dl
  add si,3
  loop loop6
  
  
  
  
   
     
    
    
    
endp main
end main