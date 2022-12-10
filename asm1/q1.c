#include <stdio.h>
#include<stdlib.h>
#include<string.h>

int a = 0;
// const int x;
void func(char *str, int b)
{
    int c;
    long d;
    char buf[64];
    char *ptr = malloc(sizeof(int));
}

// see assembly code: gcc -S -masm=intel -m32 -ggdb

char *func2(char *str){
    char *ptr = malloc(sizeof(char)*4);
    strcpy(str, ptr);
    return ptr;
}
void main(){
    char buff[] = "heelo";
    char *buf = func2(buff);
    printf("%s\n", buf);
}