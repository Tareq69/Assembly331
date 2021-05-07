.model small
.stack 100h



.data

n db 23

x dw 0

y dw 1

z dw ?

fib dw ?

fib0 db ? 

fib1 db ?
.code




main proc





   ; algorithm
   ; used
   ; x = 0
   ; y = 1
   ; for(i=1;i<n;i++){
   ; z = x;
   ; x = y
   ; y = x+z
   ; fib = y 
   ; incase the value of n is 0, i am storing the value of 0th fibonacci number in FIB0
   ; incase the value of n is 1, i am storing the value of 1th fibonacci number in FIB0
   ; However if if n>1 i am storing the value in FIB, in our case n = 23, so we get the value of
   ; 23rd fibonnaci number in FIB variable.
   
mov ax,@data
mov ds,ax




mov dh,n
cmp dh,0
je zero
jne ifone


ifone:
mov dh,n
cmp dh,1
je one
jne else

zero:
mov dh,0
mov fib0,dh
jmp exit

one:
mov dh,1
mov fib1,dh
jmp exit

else:
mov ch,01
mov cl,n                
                         
mov ax,x   ; x -> 0
mov bx,y   ;y -> 1
mov dx,z   ; z -> x
mov dx,ax   

loop1:


cmp ch,cl
je exit 

mov ax,bx  ; y -> 1
add ax,dx  ; x + z
mov bx,ax     ; y = x + z
mov fib,bx   ; storing result in fib
mov bx,ax  ; y -> x
sub ax,dx  ; x - z
mov dx,ax  ; z -> x - z
inc ch

jmp loop1


exit:
endp main

end main


