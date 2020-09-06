OpNeg           JSR POP
                ADD R5, R5, #0
                BRp Exit
                NOT R0, R0
                ADD R0, R0, #1
                JSR PUSH
Exit            BRnzp NewCommand