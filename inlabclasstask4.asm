.model small
.stack 100h

.data

arr1 db 0,1,1,2,0,0,1,1,2,2
len equ $-arr1

arr2 db 0,0,0,0,0  

count0 db 0
count1 db 0
count2 db 0


.code



main proc
  
  
 mov ax,@data
 mov ds,ax 
 
 mov cx,len
 mov dh,count0
           
           
 lea si,arr1
 
 p1:
 mov al,0
 loop1:
 mov ah,[si]
 cmp al,ah
 je countzero
 
 x:
 inc si
 
 loop loop1
 lea di,arr1
 jmp p2
 
 
 countzero:
 inc dh
 mov count0,dh
 jmp x
 
 p2:
 mov al,1
 mov cx,len
 mov dh,count1
 
 
 loop2:
 mov ah,[di]
 cmp al,ah
 je countone
 
 y:
 inc di
 
 loop loop2
 lea si,arr1
 jmp p3
 
 countone:
 inc dl
 mov count1,dl
 jmp y
 
 
 p3:
 mov al,2
 mov cx,len
 mov dh,count2 
 
 loop3:
 mov ah,[si]
 cmp al,ah
 je counttwo 
 
 t:
 inc si
 
 loop loop3
 jmp z
 
 counttwo:
 inc dh
 mov count2,dh
 jmp t 
 
 
 z:
 lea si,arr2
 mov al,count0
 mov [si],al
 inc si 
 mov al,count1
 mov [si],al
 inc si  
 mov al,count2
 mov [si],al
 hlt
 
 
      
endp main
end main