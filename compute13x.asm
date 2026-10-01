## CS 254 Program 4
## 
## COmpute 13*x
## 
## Programmer: Junior McCalla
## Date: 10/1/2026
##
## Registers $7 - $10: used to hold positive integer values for purposes of computation

ori $7, $0, 0x2     # register $7 = 2

sll $8, $7, 3        # $8 = 8x by shifting 3 times, (remember, each shift doubles the num) 10 - 10000 
sll $9, $7, 2        # $9 = 4x by shifting 2 times, 10 - 1000

addu $10, $7, $9     # $10 = x + 4x
addu $10, $10, $8    # $10 = (x + 4x) + 8x = 13x
