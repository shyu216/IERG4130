#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void func(char *data, int len)
{
    char buf[64];

    printf("%s", data);
    if (len > 64)
        return;
    printf("helllo %s", data);
    memcpy(buf, data, len);
    printf("%s", buf);
}

void main()
{
    // char buf[] = "hello";
    // printf("heelo %s", buf);
    // func(buf, -1);

    int i = -1;
    size_t j = i;
    i = 0;
    int k = j;
    printf("%u %u", i,k);

    char c[5] = "hello", a[5], b[5], d[5];
    memcpy(a, c, 5);
    memcpy(b, c, 5);
    printf("%s\n", c);
    printf("%s\n", a);
    j > 10 ? printf("true") : printf("false");
}