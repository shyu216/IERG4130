#include<stdio.h>
#include<math.h>

void main(){
    int c = 9;
    int m = 1;
    int tmp = 0;
    printf("trying brute force\n");
    while(1){
        printf("M: %d\n", m);
        tmp = (int)pow(m,5) % 35;
        printf("M^5 mod 35: %d\n", tmp);
        if (tmp==9){
            break;
        }
        m += 1;
    }

    // q2
    int e = 5;
    int z = 20;
    int d = 1;
    // int k = 0;
    printf("trying brute force\n");
    while(1){
        
        tmp = (d * e - 1) % z;
        // printf("")
        if (tmp==0){
            printf("d: %d\n", d);
            break;
        }
        d += 1;
    }
}