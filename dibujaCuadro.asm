org 100h

mov ax, 0012h
int 10h

mov cx, 15
mov dl, 230


Retorno: mov ah, 0ch
         mov al, 0ah
         int 10h
         
         inc cx
         cmp cx, 200
         je Vertical
         jmp retorno
          
Vertical: int 10h
          dec dl
          cmp dl, 45
          je Inverso
          jmp Vertical 
                   
Inverso:  int 10h
          dec cx
          cmp cx, 15
          je Ascensor
          jmp Inverso                 
          
Ascensor: int 10h
          inc dl
          cmp dl, 230
          je Fin
          jmp Ascensor   
          
          
Fin:      mov ah, 07h
          int 0x21 