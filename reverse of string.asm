include 'emu8086.inc'
print 'enter string:' 
mov si,0
mov di,0
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
  je c
  inc si
  jmp l
c:    
  sub si,1
  mov ax,si
  printn
  call print_num
  jmp l1
l1:
  cmp si,1
  jle l2
  mov dl,str[si]
  mov r[di],dl
  inc di
  dec si
  jmp l1  
l2: 
   printn 
   lea dx,r
   mov ah,09h
   int 21h
   ret
    
    
ret
str 100 dup('$')
r 100 dup('$') 
define_print_num
define_print_num_uns