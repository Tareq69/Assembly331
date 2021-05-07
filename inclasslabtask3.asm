.model small
.stack 100h

.data 



.code


main proc 
    
 
  
  mov cx,00   ; storing 0 in cx
  mov dx,01   ;storing 01 in dx
  
  
  mov bx,0h     ; storing offset in bx
  
  mov ax,3000h    ; storing segment in ax
  mov ds,ax
  mov  word ptr ds:[bx], cx    ; writting cx's value in 3000:0000
  add bx,02             ; incrementing bx by 2
  

  mov word ptr ds:[bx] , dx     ; ; writting dx's value on 3000:0010
  
  
  mov bx,0000h
  mov cx, word ptr ds:[bx]     ; storing 0 in cx
  add  bx,02
  mov dx, word ptr ds:[bx]     ; storing 01 in dx
      
  
  mov ax,cx
  mov cx,6
  fib:
  add ax,dx; num1+num2
  mov bx,ax ; bx -> num1
  mov ax,dx ; num1-> num2
  mov dx,bx ; num2-> bx
  loop fib       
endp main
end main