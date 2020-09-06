PushValue           LEA R1, ASCIIBuff
                    LD  R2, MaxDigits

ValueLoop           ADD R3, R0, #-6             ;Test for Carriage return/Line Feed
                    BRz GoodInput
                    ADD R2, R2, #0
                    BRz TooLargeInput
                    ADD R2, R2, #-1
                    STR R0, R1, # 0
                    ADD R1, R1, # 1
                    GETC
                    OUT
                    BRnzp ValueLoop

GoodInput           LEA R2, ASCIIBuff
                    NOT R2, R2
                    ADD R2, R2, #1
                    ADD R1, R1, R2
                    JSR ASCII2Binary
                    JSR PUSH
                    BRnzp NewCommand

TooLargeInput       GETC                ;Spin Until Carriage Return?? Why Would I need that?
                    OUT
                    ADD R3, R0, xFFF6
                    BRnp TooLargeInput
                    LEA R0, TooManyDigits
                    PUTS
                    BRnzp NewCommand

TooManyDigits       .FILL x000A
                    .STRINGZ "Too Many Digits"
MaxDigits           .FILL #3