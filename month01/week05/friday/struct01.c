#include <stdio.h>
#include <stdbool.h>
struct student{
    char name[20];
    int quiz;
    int project;
};

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
struct student group[4] = 
{{"Aki", 80, 90}, {"Sora", 60, 60}, {"Mina", 95, 91}, {"Ren", 45, 55}};

double final_score(struct student s)
{
    return 0.4 * s.quiz + 0.6 * s.project;
}
int count_passing_student(struct student s[],int n)
{
    int count = 0;
    for(int i = 0; i < n; ++i)
    {   
        double finalScore = final_score(s[i]);
        if(finalScore >= 60){
            count += 1;
        }
    }
    return count;
}
int best_index(struct student s[],int n)
{   
    
    int n_index;
    for (int i = 0; i < n; ++i)
    {   
        
        
        if (final_score(s[i]) > final_score(s[n_index]))
        {
            n_index = i;
        }

    }
    return n_index;
}  
double average_final(struct student s[],int n)
{
    int sum = 0;
    for(int i = 0; i < n; ++i){
        sum += final_score(s[i]);
    }
    return sum / n;

}
char letter_grade (double n){
    if (n >= 90){
            printf("A");
        }
        else if (n >= 80){
            printf("B");
        }
        else if (n >= 70){
            printf("C");
        }
        else if (n >= 60){printf("D");
        }
        else{printf("F");}
        return 0;
    }
void print_student(struct student s)
{
    printf("%s %.1f %c\n", s.name, final_score(s),letter_grade(final_score(s)));
}
int main(void)
{
check_double(final_score(group[0]),86.0);
check_double(final_score(group[2]),92.6);
check_int(count_passing_student(group, 4), 3);
check_int(best_index(group, 4), 2);
/* average_final : struct student[] int -> double */
check_double(average_final(group, 4), 72.4);
for (int i = 0; i < 4; ++i){
    print_student(group[i]);
    }
}