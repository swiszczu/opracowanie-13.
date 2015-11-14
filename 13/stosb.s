.equ x, 10
.data
.text
.global main

main:    				# int main()
MOVL $x,%ecx
MOVL %ESP,%EBX
REP STOSB
MOVL %ESP,%EAX
SUBL %EAX,%EBX

movl %eax, %ebx
movl $1, %eax  # System call number 1: exit()
# Exits with exit status 0
int $0x80      # Passes control to interrupt
