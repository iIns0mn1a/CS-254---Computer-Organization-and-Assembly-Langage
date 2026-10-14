## CS 254 Program 4
## 
## Compute 2x^4 - x^3 + 12x^2 - 13x + 8 using Horner's Method
## 
## Programmer: Junior McCalla
## Date: 10/10/2026
##

addiu $9 $0 3

ori $10 $0 2

mult $10 $9
mflo $10

ori $11 $0 1
subu $10 $10 $11

mult $10 $9
mflo $10

addiu $10 $10 12

mult $10 $9
mflo $10

ori $12 $0 13
subu $10 $10 $12

mult $10 $9
mflo $10

addiu $10 $10 8