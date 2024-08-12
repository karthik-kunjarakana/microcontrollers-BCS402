#include <LPC214x.h>
int main()
{
	unsigned int *memorylocation = (unsigned int*)0x40000000;
	unsigned int num = 10, fact = 1;
	while (num > 0){
		fact = fact * num;
		num--;
	}
	*memorylocation = fact;
 	return 0;
}