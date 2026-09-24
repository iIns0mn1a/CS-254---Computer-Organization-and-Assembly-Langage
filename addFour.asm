## CS 254 Program 3 Fall 2026
##
## Compute the sum of four integers
##
## Programmer: Junior McCalla
## Date: 23 September 2026

ori $8, $0, 0x1 # set register $8 to 2
ori $9, $0, 0x2 # set register $9 to 4
ori $11, $0, 0x3 # set register $11 to 6
ori $12, $0, 0x4 # set register $12 to 8

addu $13, $8, $9 # add $8 and $9, store result in $13
addu $14, $11, $12 # add $11 and $12, store result in $14

addu $10, $13, $14 # add registers $13 and $14, and store result in register $10