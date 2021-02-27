#program to print favorite number;
.data
input: .asciz "Enter the favorite number "
output: .asciz "Ur favorite number is "
.text

main:
     la a0, input #
     li a7, 4 # print
     ecall

     li a7,4  # reading
     ecall


     addi a0,a6,0 # a6 =a0+ 0
     li a7, 1 # a7 = 1
     ecall