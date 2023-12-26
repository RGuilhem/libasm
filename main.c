#include <stdio.h>
#include <stdlib.h>

size_t	ft_strlen(char *s);
char	*ft_strcpy(char *dest, char *src);

int main(int argc, char **argv) {
	if (argc == 3)
	{
		char *dest = malloc(1000);
		printf("argv[1]: %s\n", argv[1]);
		printf("argv[2]: %s\n", argv[2]);
		printf("&dest  : %p\n", dest);
		ft_strcpy(dest, argv[1]);
		printf("dest: %s\n", dest);
	}
	else
		printf("Usage: ./test_main <string1> <string2>");
	return (0);
}
