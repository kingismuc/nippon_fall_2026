#include <stdio.h>
#include "check.c"

void simpleSwap (int a, int b)
{
    int c = 0;
    c = a;
    a = b;
    b = c;
}
// pointers
void swap(int *a, int *b){
    int c = *a;
    *a = *b;
    *b = c;
}
int main(void)
{
    printf("---- swap ---- \n");
    int x = 2;
    int y = 1;
    swap(&x, &y);
    printf("%d\n", x);
    printf("%d\n", y);

    checkInt(x, 1);
    checkInt(y, 2);

    return 0;
}