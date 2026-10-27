#include <stdio.h>
// integer 32 bits -> -10 100, 100
// number -> number
// int -> int
// return -> утга буцаах
int square(int x) {
    return x * x;
}
//double / float (1) (-10.0 , 15.5)
// 

int main(void) {
    printf("%d\n", square(7));
    printf("%d\n", square(-3));
    return 0;
}
