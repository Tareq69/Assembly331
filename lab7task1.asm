.model small
.stack 100h


.data
 
arr db 8 dup (?)    ; arr contains the reverse binary equivalent of the decimal number
arr1 db 8 dup (?)   ; arr1 contains the  binary equivalent of the decimal number
.code



main proc
    
 
  mov ax,@data
  mov ds,ax
   
  lea si,arr
  mov al,128     ; Desired decimal number for conversion is stored in al
  mov bl,2
  mov bh,0
  mov cx,0         
  convert:
  mov ah,0
  div bl
  jmp save
  cmp ax,0
  je rev         
  jmp convert
  
  save:
  mov [si],ah      ; save the remainders after diving by 2
  inc si
  jmp convert
  
  rev:    
  lea si,arr
  lea di,arr1
  mov cx,8
  add si,07
  reverse:
  mov al,[si]             ; reversing the remainders after diving by 2
  mov [di],al
  dec si
  inc di 
  loop reverse
  hlt  
    
    
exit:    
endp main
end main