.ORIG x3050
.EXTERNAL       StackMax
PUSH            ST  R1, SaveR1
                LEA R1, StackMax
                NOT R1, R1
                ADD R1, R1, #1
                ADD R1, R1, R6
                BRz Overflow
                ADD R6, R6, #-1
                STR R0, R6, #0
                BRnzp Success_exit
Overflow        ST  R7, SaveR7   ;SaveR7 is contained in POP subroutine
                LEA R1, OverflowMsg
                PUTS
                LD  R7, SaveR7
                LD  R1, SaveR1
                AND R5, R5, #0
                ADD R5, R5, #1
                RET
Success_exit    AND R5, R5, #0
                LD  R1, SaveR1
                RET

SaveR1          .FILL x0000
SaveR7          .FILL x0000
OverflowMsg     .FILL x000A
                .STRINGZ "Error: Stack is full."
                .FILL StackMax
.END