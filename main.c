#include <stdio.h>

size_t ft_strlen(char *s);

int main(int argc, char **argv) {
	if (argc == 3)
	{
		printf("argv[1]: %s\n", argv[1]);
		printf("argv[2]: %s\n", argv[2]);
	}
	else
		printf("Usage: ./test_main <string1> <string2>");
	return (0);
}
