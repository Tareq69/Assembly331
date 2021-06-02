include 'emu8086.inc'
.model small
.stack 100h


.data

        
arr db 5 dup (?)        
len equ $-arr  

max db ?      

.code





main proc
    
    
     mov ax,@data
     mov ds,ax
     
          
     mov dl,5
     lea si,arr 
     mov ch,0
     p1:
     cmp dl,0
     je p2 
     call scan_num
     mov [si],cl
     inc  si
     dec dl
     jmp p1
           
     p2:     
     mov cx,5
     lea si,arr
     mov ah,0   
     lea di,arr
     mov al,[si]
     inc di
     loop1:  
     mov bl,[di]
     cmp al,bl
     jg storemax
     mov max,al
     
     x1:  
     inc di
    
   loop loop1
   jmp printres
     
     storemax:
     mov max,bl
     mov al,bl
     jmp x1
     
   printres:
   
   mov al,max
   mov ah,0
   print 'Minimum number in the array is: '
   call print_num   
     
     
     hlt    
    
    
    
define_print_num
define_print_num_uns    
define_scan_num  
endp main
end main