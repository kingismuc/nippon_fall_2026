#include <stdio.h>

/* check_int : бүхэл тоо тэнцүү бол PASS (C-ийн check-expect) */
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
int sum_digit(int n)
{
    int sum = 0;
    while(n >= 0){
       sum + (n % 10);
       n / 10; 
    }
    return sum;
}
int count_digits(int n)
{
    if (n == 0) {
        return 1;
    }

    if (n < 0) {
        n = -n;
    }
    int count = 0;
    while(n >= 0)
    {
        n / 10;
        count++;
    }   
    return count;
}
int count_multiples(int n , int n2)
{
    return n / n2;
}
int reverse_number(int n)
{   
    int sum = 0;

    while (n >= 0)
    {
        int digit = n % 10; 
        sum = (sum + n) * 10;
        n = n / 10;
    }
    return sum;
}
int max3(int n , int n2 , int n3)
{
    if ( n >= n2 && n >= n3)
    {
        return n;
    }
    else if(n2 >= n && n2 >= n3)
    {
        return n2;
    }
    else {
        return n3;
    }
}
int gcd(int n , int n2)
{
    while (n2 != 0)
    {
       int temp = n2;
       n2 = n % n2;
       n = temp;
    }
    return n;
}
int is_perfect(int n)
{
    for (int i = 0; i < n; i++)
    {
        int sum = 0;
        if (n % i = 0){
            sum = sum + i;
        }
    }
    if (sum = n)
    {
        return 1;
    }
    else {
        return 0;
    }
}


int main(void)
{
    check_int(sum_digit(320),5);
    check_int(count_digits(90210), 5);
    check_int(count_digits(7), 1);
    check_int(count_digits(0), 1);
    check_int(count_multiples(10, 3), 3);
    check_int(count_multiples(12, 4), 3);
    check_int(count_multiples(5, 7), 0);
    check_int(reverse_number(1234), 4321);
    check_int(reverse_number(120), 21);
    check_int(reverse_number(7), 7);
    check_int(max3(1, 5, 3), 5);
    check_int(max3(9, 2, 9), 9);
    check_int(max3(-1, -5, -3), -1);
    check_int(gcd(48, 18), 6);
    check_int(gcd(84, 36), 12);
    check_int(gcd(7, 5), 1);
    check_int(is_perfect(6), 1);
    check_int(is_perfect(28), 1);
    check_int(is_perfect(12), 0);
}


