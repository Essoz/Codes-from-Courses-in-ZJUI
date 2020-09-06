OpMul           AND R3, R3, #0
                JSR POP
                ADD R5, R5, #0
                BRp Exit
                ADD R1, R0, #0
                JSR POP
                ADD R5, R5, #0
                BRp Restore1
                ADD R2, R0, #0
                BRzp PosMultiplier
                ADD R3, R3, #1
                NOT R2, R2
                ADD R2, R2, #1
PosMultiplier   AND R0, R0, #0
                ADD R2, R2, #0
                BRz PushMult

MultLoop        ADD R0, R0, R1
                ADD R2, R2, #-1
                BRp MultLoop

                JSR RangeCheck
                ADD R5, R5, #0
                BRp Restore2

                ADD R3, R3, #0
                BRz PushMult
                NOT R0, R0
                ADD R0, R0, #1

PushMult        JSR PUSH
                BRnzp NewCommand

Restore2        ADD R6, R6, #-1
Restore1        ADD R6, R6, #-1
Exit            BRnzp NewCommand