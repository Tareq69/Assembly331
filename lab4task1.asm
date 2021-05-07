INCLUDE 'EMU8086.INC'
.model small
.stack 100h

.data


msg1   DB  'Enter the number: ', 0

.code

main proc
 

    lea si,msg1  
    
    call pthis
    DB 'Enter a number: ', 0 
    call scan_num  
    
    mov ax,cx
    call pthis 
    DB 'You have entered: ', 0   
    call print_num 
    
    
    

    exit:
    endp main     

DEFINE_SCAN_NUM  
DEFINE_PRINT_STRING 
DEFINE_PRINT_NUM 
DEFINE_PRINT_NUM_UNS 
DEFINE_PTHIS  

end main
