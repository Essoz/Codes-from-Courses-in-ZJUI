; .EXTERNAL   StackBase
.ORIG x3030
POP         LD  R0, StackBase
            NOT R0, R0
            ADD R0, R0, #1
            ADD R0, R0, R6
            BRz Underflow
            LDR R0, R6, #0
            ADD R6, R6, #1
            AND R5, R5, #0
            RET
Underflow   ST  R7, SaveR7
            LEA R0, UnderflowMsg
            PUTS
            LD  R7, SaveR7
            AND R5, R5, #0
            ADD R5, R5, #1
            RET

SaveR7      .FILL x0000
UnderflowMsg .FIll x000A
            .STRINGZ "Error: Too Few Values On the Stack."

StackMax        .FILL x3FF6
StackBase       .FILL x3FFF

.END




