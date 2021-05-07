.model small

.stack 100h

.data
  
 arr1 db 5,2,8,9,12,3    
 len equ $-arr1 ; length = 6- 0 = 6


 
.code

 
main proc 
   mov ax, @data
   mov ds, ax
   
   lea si,arr1    ; points to first address of array1 -> 5
   
   mov cx,len  ; moves 6 in cx
   
   mov bh,02 
   mov bl,0 
   
  
   
   p:
   mov al,[si]   ; moves value stored that is stored
                 ; first address in Al -> 5
   mov ah,0
   div bh
   
   cmp ah,bl
   je addeven
   jne addodd
   
   x:
   inc si
   
   loop p
   jmp exit
   
   addeven:
   mov al,[si]
   add al,dl
   mov dl,al
   jmp x
   
   addodd:
   mov al,[si]
   add al,dh
   mov dh,al
   jmp x
   
   




exit:
endp main


end main