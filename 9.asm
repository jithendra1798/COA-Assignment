#program to Use multiply_proc to print the factorial of a number
.data

input:
      .string "Enter a value: "

output:
      .string "Factorial :"      

.text

main:
    la a0,input
    li a7,4 #function call
    ecall
    li a7,5
    ecall
    mv t0,a0 # t1 = n
    addi t1,t0,1
    addi t4,x0,1
    j loop
   
loop :
     beq t1,x0,print
     addi t1,t1,-1 #decrimenting
     add t5 ,t4,x0
     add t2,t1,x0
     j multiply
         
    
multiply:
             beq t3,t1,loop #if(t3=t1) loop
             addi t3,t3,1 #i=i+1
	     add t4,t4,t2
             jal x0, multiply
                         

print:
       la a0,output 
       li a7,4
       ecall
       
       addi a0,t4,0
       li a7,1
       ecall