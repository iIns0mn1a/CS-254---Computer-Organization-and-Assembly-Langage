## CS 254 Program 7 Fall 2026
##
## Cyphering a series of bytes using XOR
##
## Programmer: Junior McCalla
## Date: 28 October 2026
## Register Use Cases: $8 (data), $10 (base address)

        .data
        .byte   0x17            # enciphered bytes
        .byte   0x99
        .byte   0xA0
        .byte   0x3F
        .byte   0xF2

        .text
        .globl  main
    
main:
        lui     $10,0x1000      # $10 = 0x10000000, base register
 
        # byte 0, mask 0x5F
        lbu     $8,0($10)       # load byte, zero-extended
        sll     $0,$0,0         # load delay slot so u can use value in mem
        xori    $8,$8,0x5F      # XOR with mask
        sb      $8,0($10)       # store low byte back
 
        # byte 1, mask 0xFC
        lbu     $8,1($10)       # load byte, zero-extended
        sll     $0,$0,0         # load delay slot so u can use value in mem
        xori    $8,$8,0xFC      # XOR with mask
        sb      $8,1($10)
 
        # byte 2, mask 0xCC
        lbu     $8,2($10)      # load byte, zero-extended
        sll     $0,$0,0        # load delay slot so u can use value in mem
        xori    $8,$8,0xCC     # XOR with mask
        sb      $8,2($10)      # store low byte back
 
        # byte 3, mask 0x53
        lbu     $8,3($10)       # load byte, zero-extended
        sll     $0,$0,0         # load delay slot so u can use value in mem
        xori    $8,$8,0x53      # XOR with mask
        sb      $8,3($10)       # store low byte back
 
        # byte 4, mask 0x9D
        lbu     $8,4($10)        # load byte, zero-extended
        sll     $0,$0,0          # load delay slot so u can use value in mem
        xori    $8,$8,0x9D       # XOR with mask
        sb      $8,4($10)        # store low byte back