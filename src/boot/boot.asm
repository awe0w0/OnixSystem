[org 0x7c00]

;设置屏幕模式为文本模式，清除屏幕

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

;阻塞
jmp $

;填充
times 510 - ($ - $$) db 0

;主引导扇区的最后两个字节必须是0x55 0xaa
db 0x55, 0xaa