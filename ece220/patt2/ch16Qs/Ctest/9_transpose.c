#include<stdio.h>

int main(void){
    int n;
    printf("Please enter the N of the NxN matrix:\n");
    if(scanf("%d", &n) != 1 || n < 1){
        printf("The input is invalid. Please execute the program again.\n"); 
        return 3;
    }
    //receive a matrix from the user. The size of the matrix must be specified.
    int matrix[n][n];
    printf("%ld", sizeof(matrix));
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            printf("Please enter the element at row %d, column %d\n", i+1, j+1);
            if(scanf("%d", &matrix[i][j]) != 1){
                printf("The input is not a number. The program terminates.\n");
                return 3;
            }
        }
    }
    //print the original matrix for debugging/checking uses.
    printf("The matrix you entered is:\n");
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            printf("%d\t", matrix[i][j]);
        }
        printf("\n");
    }

    //begin the transpose
    printf("The transposed matrix is:\n");
    for(int j = 0; j < n; j++){
        for(int i = 0; i < n; i++){
            printf("%d\t", matrix[i][j]);
        }
        printf("\n");
    }

    return 0;
}
