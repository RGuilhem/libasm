#include <stdio.h>

size_t ft_strlen(char *s);

int main(void) {
	char *tab = "Hello World";
	int val = ft_strlen(tab);

	printf("len: %d\n", val);
	return (0);
}
