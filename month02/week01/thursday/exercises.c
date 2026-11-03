#include <stdio.h>
#include <stdbool.h>

void printGreeting(int times)
{
    // TODO: 1-ээс times хүртэл давтаж "%d. Сайн уу!\n" хэвлэ
    for (int i = 0; i < times; ++i)
    {
        printf("Сайн уу!\n");
    }

}
// Дасгал 1 printGreeting ())
// 1. Сайн уу!
// 2. Сайн уу!
// 3. Сайн уу!

void printEvenNumbers(int limit)
{
    // 1000: 1 = 2-оос эхэлж, i+= 2 алхамтай давт
    for (int i = 2; i <= limit; i += 2)
    {

        printf("%d\n", i);
    }
    printf("\n");
}
// Дасгал 2 : printEvenNumbers(10)
// 2 4 6 8 10

void printLetters(char from,char to)
{
    // TODO: charc = from; c <= to; c++
    for (int i = from; i <= to; ++i)
    {
        printf("%c", i);
    }
    printf("\n");
}
// Дасгал 3 : printLetters('a' , 'f')
// a b c d e f
void printStarLine(int n)
{
    for (int i = 0; i< n; ++i)
    {
        printf("*");
    }
    printf("\n");
}
void countdownBy(int from, int step)
{
    for (int i = from; i > 0; i -= step)
    {
        printf("%d\n", i);
    }
    printf("\n");
}
void printTriangle(int height)
{
    for(int i = 1; i <= height; ++i)
    {
        printStarLine(i);
    }
}
void printFizzBuzz(int n)
{
    for(int i = 1; i <= n; ++i)
    {   
        if (i % 3 == 0 && i % 5 == 0)
        {
            printf("FizzBuzz\n");
        }
        else if (i % 3 == 0)
        {
            printf("Fizz\n");
        }
        else if (i % 5 == 0)
        {
            printf("Buzz\n");
        }
        else {
            printf("%d\n", i);
        }
    }
}
void printClockHours(int startHour, int count)
{
    for (int i = 0; i < count; ++i)
    {
        printf("%d ", (startHour + i) % 24);
    }
    printf("\n");
}
void printSpaces (int n)
{
    for (int i = 0; i < n; ++i)
    {
        printf(" ");
    }
}
void printPyramid(int height)
{
    int cnt = 0;
    for(int i = height; i >= 0;  i -= 1)
    {   
        cnt ++;
        printSpaces(i);
        printStarLine(height - i + cnt);
        
    }
}
void printMonthCalendar(int firstWeekday, int dayIsMonth)
{
    printf("Ня Да Мя Лх Пү Ба Бя\n");
    printSpaces(firstWeekday * 3);
    for (int i = 1; i <= dayIsMonth; ++i)
    {
        printf("%3d", i);
        if ((firstWeekday + i) % 7 == 0)
        {
            printf("\n");
        }
    }
}

int main(void)
{
    // TODO: Функц бүрийг дээрх жишууний утгуудаар дуудаж, гаралт нь
    //  хүлээгдэж буй үр дүнтэй яг таарч байгаа эсэхийг шалга
    printGreeting(3);
    printEvenNumbers(10);
    printLetters('a' , 'f');
    printStarLine(3);
    countdownBy(20 , 5);
    printTriangle(4);
    printFizzBuzz(15);
    printClockHours(22 , 5);
   
    printPyramid(4);
    printMonthCalendar(5, 31);
    return 0;
}