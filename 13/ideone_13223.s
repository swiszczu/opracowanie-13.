.data
.text
.global main

main:    				# int main()
# {
# your code goes here
#MOVL
XORL %eax, %eax
MOVW $0xFF00 ,%ax #ah=FF,al=00
ADCB %ah ,%al #al=al+ah+cf=FF+00+0=FF
ADCB %ah ,%al #al=al+ah+cf=FF+FF=FE,CF=1
# co do struktury rejetrow patrz rysunek z pyt 1 AX to 
# mlodsza czesc EAX, AL to mlodsza czesc AX, AH, starsza
XORL %ebx, %ebx
movl %eax, %ebx
movl $1, %eax  # System call number 1: exit()
# Exits with exit status 0
int $0x80      # Passes control to interrupt
# }
