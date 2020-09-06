
OpDisplay           JSR POP
                    ADD R5, R5, #0
                    BRp NewCommand
                    JSR Binary2ASCII
                    LD  R0, NewlineChar
                    OUT
                    LEA R0, ASCIIBuff
                    PUTS
                    ADD R6, R6, #-1
                    BRnzp NewCommand

NewlineChar         .FILL x000A