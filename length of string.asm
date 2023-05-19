include 'emu8086.inc'
print 'enter string:' 
mov si,2
mov ah,10
lea dx,str
mov str,100
int 21h
printn  
lea dx,str+2
mov ah,09h
int 21h 
l:
  mov dl,str[si]
  cmp dl,'$'
  je l2
  inc c
  inc si
  jmp l
l2:
  mov ax,c 
  printn
  call print_num
  hlt  
 
define_print_num
define_print_num_uns  
str db 100 dup('$') 
c dw 0

