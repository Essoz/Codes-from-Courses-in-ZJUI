.EXTERNAL       SaveR7

RangeCheck      LD  R5, Neg999
                ADD R4, R0, R5
                BRp BadRange
                LD  R5, Pos999
                ADD R4, R0, R5
                BRn BadRange
                AND R5, R5, #0
                RET
BadRange        ST  R7, SaveR7
                LEA R0, RangeErrorMsg





Neg999          .FILL #-999
Pos999          .FILL #999
RangeErrorMsg   .FILL x000A
                .STRINGZ "Error, Number is out of range."