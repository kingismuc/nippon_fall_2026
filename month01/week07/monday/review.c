#include <stdio.h>
#include <string.h>
#include "check.h"
void ex01()
{
    int x = 5;
    int *p = &x;
    *p = 10;
    printf("%d\n", x);
    printf("%d\n", &x);
}
/* count_spaces : char[] -> int */
int count_spaces(char word[])
{   
    int charLength = strlen(word);
    int count = 0;
    for(int i = 0; i < charLength; ++i)
    {
        if(word[i] == ' ')
        {
            count += 1;
        }
    }
    return count;
}
void clamp(int* x,int low,int high)
{
    if(*x <= low)
    {
        *x = low;
    }
    else if(*x >= high){
        *x = high;
    }
}
/* order : int* int* -> void   *a <= *b болгоно (шаардлагатай бол солино) */

void order (int *a , int *b)
{
    if (*b < *a)
    {   
        int c = *b;
        *b = *a;
        *a = c;
    }
}
int main (void)
{
    ex01();
checkInt(count_spaces("GET / HTTP/1.1"), 2);
checkInt(count_spaces("abc"), 0);
checkInt(count_spaces("a b c d"), 3);
/* clamp : int* int int -> void   *x-ийг lo..hi мужид оруулна */
int v = 120; 
clamp(&v, 0, 100); 
checkInt(v, 100);
int w = -5;  
clamp(&w, 0, 100); 
checkInt(w, 0);
int z = 50;  
clamp(&z, 0, 100); 
checkInt(z, 50);
int a = 5, b = 3; 
order(&a, &b); 
checkInt(a, 3); 
checkInt(b, 5);
}