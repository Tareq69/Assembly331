.model small
.stack 100h




.data


arr db 1,2,3,4,5,6,7,8,1,2 
len equ $-arr
arr1 db 1,2,3,4,5,6,7,8,1,2

arr2 db dup 10 (?)
x db ? 

.code


main proc
    
  
  mov ax,@data
  mov ds,ax

    
  mov cx,len
  lea si,arr
  lea di,arr1
  lea bx,arr2
  loop1:
  mov al,[si]
  mov dl,[di]
  add al,dl
  mov [bx],al
  
  inc si
  inc di
  inc bx
  loop loop1
  hlt
    
  
  
  
    
    
endp main
end main