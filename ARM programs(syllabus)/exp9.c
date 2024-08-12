#include <LPC214x.h>
int main()
{
	char input[100] = "Hello World!";
	unsigned int i;
	unsigned char *memorylocation = (unsigned char*)0x40000000;
	for (i = 0; input[i]!= '\0'; i++){
		if (input[i] >= 'a' && input[i] <= 'z'){
			*memorylocation++ = (input[i] & ~0x20); 	// Convert lowercase to uppercase
		}
		else if (input[i] >= 'A' && input[i] <= 'Z'){
			*memorylocation++ = input[i] | 0x20; 		// Convert uppercase to lowercase
		}
		else{
			*memorylocation++ = input[i];
		}
	}
	return 0;
}