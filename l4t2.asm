;INCLUDE 'EMU8086.INC'
org 100h
.model small
.data

arr db 5,9,10,12,14 
len equ $-arr 

msg1 db "Value found.$"
msg2 db "Value not found.$"

.code

main proc 
    
DEFINE_SCAN_NUM  
DEFINE_PRINT_STRING 
DEFINE_PRINT_NUM 
DEFINE_PRINT_NUM_UNS 
DEFINE_PTHIS  
     
      
    
    PRINT 'Enter a number: '
 
    call scan_num 
    
    mov ax,cx   
    
    printn '' 
           
    mov dl,7 
    
    mov cx,5
    
    lea di,arr
    
    search: 
    
    cmp dl,[di]
    je found
    
    inc di
      
    loop search
               
    lea si,msg2
    mov ah,09
    int 21h
    jmp exit           
   
    found:
    lea si,msg1
    mov ah,09
    int 21h 
  
    exit:
    endp main     

  
DEFINE_SCAN_NUM  
DEFINE_PRINT_STRING 
DEFINE_PRINT_NUM 
DEFINE_PRINT_NUM_UNS 
DEFINE_PTHIS  
     
end main

