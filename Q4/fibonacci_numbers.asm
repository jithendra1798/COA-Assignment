.data
inputstr: .asciz "Enter the no.of fibonacci numbers N: "
outputstr: .asciz "The N Fibonacci Numbers are\n"
space: .asciz " "

	.text

main:
	la 	a0, inputstr
	li 	a7, 4 # printStr function call
	ecall
	
	li 	a7, 5 # readint system call
	ecall
	
	
	addi 	t0, a0, 0 # copy the N value from a0 to t0
	li 	t1, 1 # First number of Sequence
	li 	t2, 0 # Second number of Sequence
	li	t3, 2 # i = 3 value to iterate loop (since first two numbers are 1 and 0)
	
	la	a0, outputstr
	li	a7, 4
	ecall 
	
	beq	t0, x0, return
	
	li	a0, 0
	li 	a7, 1
	ecall # Print the first number i.e. 0
	
	
	la	a0, space
	li	a7, 4
	ecall # Gives space between the numbers
	
	beq t0, t2, return # If n==1, exit since 0 is printed
	
	
	
	loop:
		add 	a0, t1, t2 # a0 = t1 + t2
		addi 	t1, t2, 0 # t1 = t2 + 0
		addi	t2, a0, 0 # t2 = a0 + 0
		li	a7, 1 # printInt system call
		ecall
		la 	a0, space # gives space between two numbers
		li 	a7, 4 # print String
		ecall
		addi	t3, t3, 1 # Increment value of i by one
		ble 	t3, t0, loop # branch if equal: if i <= N continue the loop
		
	return: