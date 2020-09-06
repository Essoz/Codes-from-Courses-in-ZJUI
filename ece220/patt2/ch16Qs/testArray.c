#include <stdio.h>

void Average(int *n);

int main()
{
    int tt[4];
    tt[1] = 0;
    printf("aaa%d\n", tt[1]);
    Average(&tt[1]);
    printf("ccc%d\n", tt[1]);

    // int a = 0;
    // a++;
    // printf("%d\n", a);
    // return 0;

}

void Average(int *n)
{
    *n++;
    // *n = *n + 1;
    // ++*n;
    printf("bbb%d\n", *n);
}