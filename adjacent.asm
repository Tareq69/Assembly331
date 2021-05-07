.model small
.stack 100h


.data


.code


main proc
    
mov al,06h
mov bl,02h

mov bh,0

xor al,bl

mov cx,08 

loop1:
shl al,1
jc inccount
loop loop1
jmp x

inccount:
inc bh
jmp loop1

x:
cmp bh,01
je storedl
jmp storedl1


storedl:
mov dl,01h
hlt

storedl1:
mov dl,00h
hlt


exit:
endp main
end main