Binary2ASCII            LEA R1, ASCIIBuff
                        ADD R0, R0, #0
                        BRn NegSign
                        LD  R2, ASCIIplus
                        STR R2, R1, #0
                        BRnzp Begin100
NegSign                 LD  R2, ASCIIminus
                        STR R2, R1, #0
                        NOT R0, R0
                        ADD R0, R0, #1

Begin100                LD  R2, ASCIIoffset
                        LD  R3, Neg100

Loop100                 ADD R0, R0, R3
                        BRn End100
                        ADD R2, R2, #1
                        BRnzp Loop100

End100                  STR R2, R1, #1
                        LD  R3, Pos100
                        ADD R0, R0, R3

Begin100                LD  R2, ASCIIoffset
                        ; LD  R3, Neg10
Loop10                  ADD R0, R0, #-10
                        BRn End10
                        ADD R2, R2, #1
                        BRnzp Loop10

End10                   STR R2, R1, #2
                        ADD R0. R0, #10
Begin1                  LD  R2, ASCIIoffset
                        ADD R0, R0, R2
                        STR R0, R1, #3

                        RET                      

ASCIIplus               .FILL x002B
ASCIIminus              .FILL x002D
ASCIIoffset             .FILL x0030
Neg100                  .FILL xFF9C
Pos100                  .FILL x0064
; Neg10                   .FILL xFFF6

ASCIIBuff               .BLKW 4