#include <stdio.h>
#include <stdbool.h>

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
double apply_discount(double price, double discount_percent)
{
    return price - (1.0 - discount_percent);
}
int get_hours(int total_minutes)
{
    return total_minutes / 60;
}
int get_min(int total_minutes)
{
    return total_minutes % 60;
}
char to_upper_case(char c){
    return c - 32;
}
bool is_negative(int x)
{
    if (x < 0)
    return true;
    else return false;
}
bool is_positive_and_even(int x)
{
    if ((x > 0)&&(x % 2 == 0))
    return true;
    else return false;
}
double to_celsius(double f)
{
     return ((f - 32 )* 5.0 / 9.0) ;
}
int round_down_to_ten(int n)
{
    return n - (n % 10);
}
bool at_least_two_positive(int a, int b, int c)
{
    if ((a > 0 && b > 0)||(b > 0 && c > 0)||(a > 0 && c > 0))
    return true;
    else return false;

}
int main(void)
{
    check_double(apply_discount(100.0, 0.15), 85.00);
    printf("Capital Letter = %c\n", to_upper_case('a'));
    check_int(is_negative(-5),true);
    check_int(is_positive_and_even(4),true);
    check_int(is_positive_and_even(-4),false);
    check_double(to_celsius(98.6),37);
    check_int(round_down_to_ten(19),10);
    check_int(round_down_to_ten(47),40);
    check_int(at_least_two_positive(-5,3,2), true);
    check_int(at_least_two_positive(-4,-3,2),false);
    return 0;
}