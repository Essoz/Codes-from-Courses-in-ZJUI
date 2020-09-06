.ORIG x3000
.EXTERNAL   OpAdd
; .EXTERNAL   OpClear
; .EXTERNAL   OpDisplay
; .EXTERNAL   OpMul
; .EXTERNAL   OpNeg
; .EXTERNAL   PushValue

                LD  R6, StackBase
                ADD R6, R6, #1
                LEA R0, PromptMsg
                PUTS
                GETC
                OUT

TEST            LD  R1, NegX
                ADD R1, R1, R0
                BRz Exit

                LD  R1, NegC
                ADD R1, R1, R0
                BRz OpClear

                LD  R1, NegPlus
                ADD R1, R1, R0
                BRz OpAdd

                LD  R1, NegMult
                ADD R1, R1, R0
                BRz OpMul

                LD  R1, NegMinus
                ADD R1, R1, R0
                BRz OpNeg

                LD  R1, NegD
                ADD R1, R1, R0
                BRz OpDisplay

                BRnzp   PushValue

NewCommand      LEA R0, PromptMsg
                PUTS
                GETC
                OUT
                BRnzp TEST

Exit            HALT

PromptMsg       .FILL x000A
                .STRINGZ "Enter a command:"
NegX            .FILL xFFA8
NegC            .FILL xFFBD
NegPlus         .FILL xFFD5
NegMinux        .FILL xFFD3
NegMult         .FILL xFFD6
NegD            .FILL xFFBC
            ; .FILL


                ; .FILL OpAdd

.END