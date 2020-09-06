;|R0|Result
;|R1|The total number of digits
;|R2|ASCII Value Pointer
;|R3|Temp Storage for operand (-x0030)
;|R4|Temp Value holder


ASCII2Binary    AND R0, R0, #0
                ADD R1, R1, #0
                BRz DoneA2B

                LD  R3, NegASCIIOffset
                LEA R2, ASCIIBuff
                ADD R2, R2, R1
                ADD R2, R2, #-1


                LEA R5, DigitMask        
ValueLoop       ADD R1, R1, #-1
                BRz DoneA2B
                LDR R4, R2, #0       
                ADD R2, R2, #-1  ;point R2 to the next digit
                LDR R3, R5, #0
                ADD R5, R5, #1
ValueMulLoop    ADD R0, R4, #0
                ADD R3, R3, #-1
                BRzp ValueMulLoop
                BRn ValueLoop

DoneA2B         RET

NegASCIIOffset  .FILL xFFD0
ASCIIBuff       .BLKW 4
                .BLKW 
DigitMask       .FILL #1
                .FILL #10
                .FILL #100
                ; .FILL #0        ;Marks the end of DigitMask