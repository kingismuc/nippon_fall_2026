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

int sumOddto(int n)
{
    int sum = 0;
    for (int i = 0; i < n; ++i)
    {
        if(i % 2 == 1)
        {
            sum += i;
        }
    }
    return sum;
}
/* is_palindrome_number : int -> int
   урвуулахад ижил бол 1. Лхагвын reverse_number-ийг дууд. */
int is_palindrome_number (int n)
{
    int place = 0 ;
    int temp = 0;
    while (n > 0)
    {
        temp = n % 10;
        place = (temp + place) * 10;
        n = n / 10;
    }
    if (place == n)
    {
        return 1;
    }
    else {
        return 0;
    }
    
}
// (define numbers (cons 3(cons 4 (cons empty))))
int main(void)
{

    // 1 2 4 5
    int numbers[4] = {1, 2, 3, 4};
    printf("%d\n", numbers[0]); 

    //scores 70,82,95,63,88

    //88,95,70 хэвлэж харуулна уу
    int score[5] = {70,82,95,63,88};
    printf("%d ", score[4]);
    printf("%d ", score[2]);
    printf("%d\n", score[0]);

    //array value change
    // 63 -> 85
    printf("Before change %d \n", score[3]);
    score[3] = 85;
    printf("After change %d \n", score[3]);
    score[0] = 95;
    printf("Change first array %d \n", score[0]);
    // print all value of arrays
    char englishAlphabet[26] = {'a', 'b', 'c', 'd', 'e', 'f', 
        'g', 'h', 'i', 'j', 'k', 'l'
        , 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        for (int i = 0; i < 26; i++)
        {
            printf("%c ", englishAlphabet[i]);
        }
    printf("\n");
    // 1-st letter: a
    // 2-nd letter: b
    // 3-rd letter: c
    // ...
    // 26-th letter: z
    for (int i = 1; i <= 26; i++)
    {
        if (i == 1)
        {
            printf("1-st letter : %c\n",englishAlphabet[0]);
        }
        else if (i == 2)
        {
            printf("2nd letter : %c\n",englishAlphabet[1]);
        }
        else if (i == 3)
        {
            printf("2nd letter : %c\n",englishAlphabet[2]);
        }
        else{
            printf("%d-th letter: %c\n", i, englishAlphabet[i - 1]);
        }
    }

    // size of array
    //
    int size = sizeof(englishAlphabet);
    printf("%d\n", size);

    // эхлээд 10-ийн урттай array үүсгэнэ үү
    // тэгээд 1-ээс 10 хүртэл дүүргэнэ үү
    // дараа нь for loop ашиглан size of ашиглан
    //　1-20 хүртэлх зөвхөн тэгш тоонуудыг нь агуулсан
    // array болгож утгуудыг нь өөрчлөөрэй.
    // {1,2,3,4, ...} => {2,4,6 ....}
    // эхний утгыг нь хойш нь цувуулж харуулаад
    // дараагийн өөрчилсөн утгуудыг нь цувуулж хэвлэж харуулаад
    // зөв хийснээ шалгаарай
    int numb[10] = {1,2,3,4,5,6,7,8,9,10};
    int tenNumberSize = sizeof (numb) / sizeof(numb[0]);
    for(int i = 0; i < tenNumberSize; ++i)
    {
    printf("%d ",numb[i]);
    }
    printf("\n");
    for(int i = 1; i <= tenNumberSize; ++i)
    {
        numb[i - 1] = i * 2;
        printf("%d ", numb[i - 1]);
    }
    printf("\n");
    /// /* sumOddTo : int -> int
    // 1-ээс n хүртэлх сондгой тоонуудын нийлбэр 
    printf("%d\n", sumOddto(100));
    check_int(is_palindrome_number(121), 1);
    check_int(is_palindrome_number(123), 0);
    check_int(is_palindrome_number(7), 1);  
    return 0;


}