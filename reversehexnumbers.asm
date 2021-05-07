include emu8086.inc
.model small
.stack 100h

.data


.code


main proc

mov ax,0FFFFH
mov dx,0FFFFH

mov cx,16

loop1:

shl ax,1
rcr bx,1

loop loop1

mov ax,bx

cmp dx,ax
je positive
jmp negative

positive:
print 'Number is palindrome' 
jmp exit

negative:
print 'Number is not palindrome'




exit:    
endp main 

define_print_string
end main