include 'emu8086.inc'
print 'enter string:'
mov ah,10
lea dx,str
mov str,100
int 21h
printn
lea dx,str+2
mov ah,09h
int 21h
printn
mov si,2
mov di,0   
l:
  mov di,0
  mov al,str[si]
  cmp al,'$'
  je l1
l2:
  mov dl,v[di]
  cmp dl,'$'
  je l3
  cmp al,dl
  je l4 
  inc di
  jmp l2
l3:
  inc c2
  inc si 
  jmp l   
l4:
  inc c1
  inc si
  jmp l 
l1:
  mov ax,c1
  print 'vowels='
  call print_num 
  printn
  mov ax,c2
  print 'consonants='
  call print_num
  hlt  
define_print_num
define_print_num_uns   
v db 'a','e','i','o','u','A','E','I','O','U','$' 
str db 100 dup('$')  
c1 dw 0  
c2 dw 0