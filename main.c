#include <stdio.h>
#include <stdlib.h>
#include <string.h>

size_t	ft_strlen(char *s);
char	*ft_strcpy(char *dest, char *src);
int	ft_strcmp(char *s1, char *s2);
int	ft_write(int, char *, size_t);

int main(int argc, char **argv) {
	if (argc == 3)
	{
		char *dest = malloc(1000);
		printf("argv[1]: %s\n", argv[1]);
		printf("argv[2]: %s\n", argv[2]);
		printf("&dest  : %p\n", dest);
		ft_strcpy(dest, argv[1]);
		printf("dest: %s\n", dest);
		printf("ft_strcmp: %d\n", ft_strcmp(argv[1], argv[2]));
		printf("strcmp: %d\n", strcmp(argv[1], argv[2]));
		ft_write(1, argv[1], ft_strlen(argv[1]));
		printf("\n");
	}
	else
		printf("Usage: ./test_main <string1> <string2>");
	return (0);
}
