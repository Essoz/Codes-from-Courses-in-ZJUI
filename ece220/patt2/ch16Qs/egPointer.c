/*this program is copied from Yale Patt, Sanjay Patel, 
Introduction to Computing Systems, 
From bits and gates to C and beyond                     */

#include <stdio.h>

int IntDivide(int x, int y, int *quoPtr, int *remPtr);

int main()
{
    int dividend;
    int divisor;
    int quotient;
    int remainder;
    int error;

    printf("Input Dividend\n");
    scanf("%d", &dividend);
    printf("Input Divisor\n");
    scanf("%d", &divisor);  /*test here whether scanf itself can detect if a wrong type was input*/

    error = IntDivide(dividend, divisor, &quotient, &remainder);

    if (!error)
    {
        printf("Answer: %d remainder %d\n", quotient, remainder);
    }else{
        printf("IntDivide failed.\n");
    }

}

int IntDivide(int x, int y, int *quoPtr, int *remPtr)
{
    if (y != 0)
    {
        *quoPtr = x / y;
        *remPtr = x % y;
        return 0;
    }else{
        return -1;
    }

}