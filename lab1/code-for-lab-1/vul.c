#include <stdio.h>
 
void myprintf()
{
	char input[100];
	int var = 0x55667788;
 
	/* print out information for experiment purpose */
	printf("Target address: %x\n", (unsigned) &var);
	printf("Data at target address: 0x%x\n", var);
 
	printf("Please enter a string: ");
	fgets(input, sizeof(input)-1, stdin);
 
	printf(input); //The vulnerable place ➀
 
	printf("Data at target address: 0x%x\n", var);
}
 
void main() {myprintf();}

