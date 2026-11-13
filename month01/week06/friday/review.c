#include <stdio.h>
#include <string.h>
#include "check.c"

struct student
{
    char name[20];
    int quiz;
    int project;
};

double finalScore(struct student s)
{
    return 0.4 * s.quiz + 0.6 * s.project;
}

int countAbove(struct student s[],int size , int score)
{   
    int count = 0;
    for(int i = 0; i < size; ++i)
    {
        if(finalScore(s[i]) > score)
        {
            count += 1;
        }
    }
    return count;
}

int totalProject(struct student s[], int size)
{
    int sum = 0;
    for (int i = 0; i < size; ++i)
    {
        sum += s[i].project;
    }
    return sum;
}

char findByName(struct student a[], int n , char name[])
{
    for(int i = 0; i < n; ++i)
    {
        if(strcmp(a[i].name, name) == 0)
        {
            return i;
        }
    }
    return -1;
}

int hasStudent(struct student s[], int size ,char name[])
{

    return findByName(s,size,name) != -1;
}

int main (void){
    struct student group[6] = {
        {"Aki", 80, 90}, {"Sora", 60, 60}, {"Mina", 95, 91},
        {"Ren", 45, 55}, {"Bat", 70, 75}, {"Uka", 100, 34}};
    checkInt(countAbove(group, 6, 80), 2);
    checkInt(countAbove(group, 6, 100), 0);
    checkInt(totalProject(group, 6), 405);
    checkInt(totalProject(group, 1), 90);

    checkInt(hasStudent(group, 6, "Ren"), 1);
    checkInt(hasStudent(group, 6, "Zaya"), 0);
    return 0;
}