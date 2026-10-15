## CS 254 Program 4
## 
## Compute 2x^4 - x^3 + 12x^2 - 13x + 8 using Horner's Method
## 
## Programmer: Junior McCalla
## Date: 10/10/2026
## 
## $9 - $12: Holding positive integer values for addition or subtraction computations
## $10: Accumulator register to hold the final result of the polynomial computation

addiu $9 $0 3 # initialize $9 to hold the x value

ori $10 $0 2 # initialize $10 to hold the result of the polynomial

mult $10 $9 # multiply current value by x
mflo $10

ori $11 $0 1  # subtract 1 from the result (2x -1)
subu $10 $10 $11

mult $10 $9 # multiply current value in Reg $10 by x (2x^2 -x)
mflo $10

addiu $10 $10 12 # add immediate value 12 to the result (2x^2 - x + 12) (i assumed we were allowed to use the immediate instruction instead since it worked like the ori instruction, using an immedate const16 value)

mult $10 $9 # multiply current value in Reg $10 by x (2x^3 - x^2 + 12x)
mflo $10

ori $12 $0 13 # subtract 13 from the result (2x^3 - x^2 + 12x - 13)
subu $10 $10 $12

mult $10 $9 # multiply current value in Reg $10 by x (2x^4 - x^3 + 12x^2 - 13x)
mflo $10

addiu $10 $10 8 # add immediate value 8 to the result (2x^4 - x^3 + 12x^2 - 13x + 8), final result is in reg $10