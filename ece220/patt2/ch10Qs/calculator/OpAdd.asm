OpAdd           JSR POP
                ADD R5, R5, #0
                BRp Exit
                ADD R1, R0, #0
                JSR POP
                ADD R5, R5, #0
                BRp Restore1
                ADD R0, R1, R0          ;Put the result in R0 for later range check and push
                JSR RangeCheck
                BRp Restore2
                JSR PUSH
                BRnzp NewCommand

Restore2        ADD R6, R6, #-1
Restore1        ADD R6, R6, #-1
Exit            BRnzp NewCommand 