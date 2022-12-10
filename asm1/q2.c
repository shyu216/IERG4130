#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int bof(char *str, int i, int j, int k){
    char buffer[16];
    int temp = i + j + k;
    strcpy(buffer, str);
    return temp;
}