include emu8086.inc
.model small
.stack 100h

.data


.code


main proc
    

mov al,0F5H

and al,00FH

cmp al,9
jg greater
jmp lower

greater:
print 'Greater than 9'
jmp exit

lower:
print 'Lower than 9' 

exit:  
endp main


define_print_string  
end main
    
    
    
    
    
    
    
    
    
    
    
    
    
endp main
end main