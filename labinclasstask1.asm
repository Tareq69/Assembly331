.model small

.stack 100h


.data 



.code


main proc
    
       mov ax,@data
       mov ds,ax
       
       ; multiplication
       
       mov dl,10
       mov bl,5
       
       mov al,dl
       
       mul bl 
       
       
       mov dx,3000H
       mov ds,dx
       mov bx,3333H 
       mov word ptr ds:[bx],ax 
       
        
       ; division  
       
       mov cl,25 
       mov ah,0
       mov al,5
       div cl
       
       mov dx,3000H
       mov ds,dx
 
       mov bx,0001H
       mov word ptr ds:[bx],ax    
       
  
endp main
end main