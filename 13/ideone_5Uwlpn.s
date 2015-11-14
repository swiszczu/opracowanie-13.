.data

.text

.global main
main:    				# int main()
# {
# your code goes here
#MOVL
MOVL $0xFFFF0000 ,%eax #eax=0xFFFF0000
NEG %eax  #NEG to uzupelnienie dwojkowe U2 , czyli %eax=!(%eax)+1
#, najpierw negacja bitowa potem + 1, czyli 0xFFFF0000->0X0000FFFF->0x00010000
movl %eax, %ebx
movl $1, %eax  # System call number 1: exit()
# Exits with exit status 0
int $0x80      # Passes control to interrupt
# }
