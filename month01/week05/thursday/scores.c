#include <stdbool.h>
#include <stdio.h>

void check_int(int actual, int expected) {
    if (actual == expected) {
        printf("PASS\n");
    } else {
        printf("FAIL: %d гарсан, %d хүлээсэн\n", actual, expected);
    }
}

/* check_double : зөрүү 0.001-ээс бага бол PASS (L8: double яг биш) */
void check_double(double actual, double expected) {
    double diff = actual - expected;
    if (diff < 0.001 && diff > -0.001) {
        printf("PASS\n");
    } else {
        printf("FAIL: %f гарсан, %f хүлээсэн\n", actual, expected);
    }
}
int scores[5] = {70, 82, 95, 63, 88}; 
int mixed[5] = {40, 60, 72, 58, 100};
int total (int a[],int n)
{
    int sum = 0;
    while (n >= 0)
    {
        for(int i = 0; i <= n; ++i)
        {   
            
            sum += a[i];
            n -= 1;
        }
    }
    return sum;
}
int main(void)
{
    check_int(total(scores, 5), 398);
}