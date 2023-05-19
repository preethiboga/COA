include 'emu8086.inc'
print 'enter string:' 
mov si,0
mov di,2
mov ah,10 
lea dx,str
mov str,100  
int 21h
printn
lea dx,str+2
mov ah,09h 
int 21h  
l:
  cmp dl,'$'
  je c
  mov dl,str[si]
  inc si 
  jmp l
c:         
  sub si,2
  mov ax,si
  printn
  call print_num  
l1:  
  cmp di,si
  jg l3  
  mov dl,0
  mov dl,str[si]
  cmp dl,str[di] 
  jne l2
  dec si
  inc di 
  jmp l1
l3:
  print 'pal'
  hlt
l2:
  print 'not pal'
  hlt    
ret               
str 100 dup('$') 
r 100 dup('$') 
n dw 0
define_print_num
define_print_num_uns


