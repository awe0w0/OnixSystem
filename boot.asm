[org 0x7c00]

;������ĻģʽΪ�ı�ģʽ�������Ļ

mov ax, 3
int 0x10

mov ax, 0
mov ds, ax
mov es, ax
mov ss, ax
mov sp, 0x7c00

mov ax, 0xb900
mov ds, ax
mov byte [0], 'H'

;����
jmp $

;��� 0
times 510 - ($ - $$) db 0

;��������������������ֽڱ����� 0x55 0xaa
db 0x55, 0xaa