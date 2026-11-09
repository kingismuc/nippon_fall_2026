#include <stdio.h>
#include "check.h"


int index_of_max(int a[], int size)
{
    int maxIndex = 0;
    for (int i = 0; i < size; ++i)
    {
        if (a[i] > a[maxIndex])
        {
            maxIndex = i;
        }
    }
    return maxIndex;

}
int count_even(int a[],int size)
{
    int even = 0;
    for (int i = 0; i < size; ++i)
    {
        if (a[i] % 2 == 0)
        {
            even += 1;
        }
    }
    return even;

}
int digit_sum(int n)
{   
    if (n < 0)
    {
        n = -n;
    }
    int sum = 0;
    for(; n > 0; n = n / 10)
    {
        sum = sum + n % 10;
    }
    return sum;
}
int sum_digits_array(int a[], int size)
{
    int sum = 0;
    for (int i = 0; i < size; ++i)
    {   
        sum += digit_sum(a[i]);
        
    }
    return sum;
}
/* index_of_max : int[] int -> int   n >= 1, эхний их утгын index */
int scores[5] = {70, 82, 95, 63, 88};
int tie[4] = {9, 9, 1, 2};
int main(void)
{
checkInt(index_of_max(scores, 5), 2);
checkInt(index_of_max(tie, 4), 0);
/* count_even : int[] int -> int */
checkInt(count_even(scores, 5), 3);
checkInt(count_even(tie, 4), 1);
/* sum_digits_array : int[] int -> int
   элемент бүрийн цифрийн нийлбэрийг нэмнэ (W5-ийн digit_sum-ийг дууд) */
checkInt(sum_digits_array(scores, 5), 56);
checkInt(sum_digits_array(tie, 4), 21);
return 0;
}
