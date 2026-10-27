#include <stdio.h>

// number -> number
int square (int x)
{
    return x * x;
}
// EX 01
// cube функц үүсгэнэ
// int -> int
// 2 -> 8
// 2 * 2 * 2
int cube (int x)
{
    return x * x * x;
}
// EX 02
// last_digit гэдэг өгөгдсөн бүхэл тооны сүүлчийн цифрийг буцаадаг функц бичнэ үү
// int -> int
// Жишээ нь: 19->9, 1345 -> 5 гэх мэт
int last_digit(int x)
{
    return x % 10;
}
//EX 03
// final_score гэдэг өгөгдсөн quiz, project гэдэг integer төрөлтэй параметраар сүүлчийн оноог боддог функц бичьё
// quiz нь 40%, project -> 60% нийт оноог эзэлнэ
// int int -> int
// (int quiz, int project)
double final_score(int quiz , int project){
    return quiz * 0.4 + project * 0.6;
}
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
// EX04
// to_fahrenheit
// celcius -> fahrenheit
// c * 9 / 5 +32
double to_fahrenheit(double c)
{
   return ((c * 9.0 / 5.0) + 32) ;
}
// 20 -> 68.0
// 32 ->  89.6
// 37 -> 98.6
// -17.8 -> 0.0

int main(void)
{
    printf("%d\n", cube(3));
    printf("%d\n", last_digit(123214));
    check_int(cube(3), 27);
    // cube tests
    // -2 -> 8
    check_int(cube (-2),-8);
    check_int(last_digit(1234),4);
    check_int(last_digit(7),7);
    check_double(final_score(80,90),86.0);
    check_double(final_score(60,60),60.0);
    check_double(final_score(95,91),92.6);
    check_double(to_fahrenheit(20),68.0);
    check_double(to_fahrenheit(32),89.6);
    check_double(to_fahrenheit(37),98.6);
    check_double(to_fahrenheit(-17.8), -0.04);
    // last_digit tests
    // 1234 -> 4
    // 7 -> 7
    // final_score tests
    // 80 90 -> 86.0
    //60 60 -> 60.0
    // 95 91 -> 92.6
    return 0;
}