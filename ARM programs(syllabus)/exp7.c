#include <LPC214x.h>
int main()
{
	unsigned int i, j, temp;
	unsigned int arr[] = {0x44, 0x11, 0x33, 0x55, 0x22};
	unsigned int *memorylocation = (unsigned int*)0x40000000;
	for (i = 1; i < 5; i++){
		for (j = 0; j < 5 - i; j++){
			if (arr[j] > arr[j + 1]){
				temp = arr[j];
				arr[j] = arr[j + 1];
				arr[j + 1] = temp;
			}
		}
	}
	for (i = 0; i <5; i++){
		*memorylocation++ = arr[i];
	}
	return 0;
}