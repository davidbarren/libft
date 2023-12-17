SRCS = ft_isalpha.c\
ft_isdigit.c\
ft_isalnum.c\
ft_isascii.c\
ft_isprint.c\
ft_strlen.c\
ft_memset.c\
ft_bzero.c\
ft_memcpy.c\
ft_memmove.c\
ft_strlcpy.c\
ft_strlcat.c\
ft_toupper.c\
ft_tolower.c\
ft_memchr.c\
ft_memcmp.c\
ft_strnstr.c\
ft_strdup.c\
ft_strncmp.c\
ft_strrchr.c\
ft_strchr.c\
ft_putchar_fd.c\
ft_putstr_fd.c\
ft_calloc.c\
ft_putendl_fd.c\
ft_substr.c\
ft_strjoin.c\
ft_putnbr_fd.c\
ft_strtrim.c\
ft_atoi.c\
ft_striteri.c\
ft_itoa.c\
ft_strmapi.c\
ft_split.c\

OBJS= $(SRCS:.c=.o)

BSRCS = ft_lstnew_bonus.c\
		ft_lstadd_front_bonus.c\
		ft_lstsize_bonus.c\
		ft_lstlast_bonus.c\
		ft_lstiter_bonus.c\
		ft_lstdelone_bonus.c\
		ft_lstadd_back_bonus.c\
		ft_lstclear_bonus.c\

BOBJS= $(BSRCS:.c=.o)

NAME = libft.a

all: $(NAME)

$(OBJS): $(SRCS)
	cc -Wall -Wextra -Werror -c $(@:.o=.c) -o $@

$(BOBJS): $(BSRCS)
	cc -Wall -Wextra -Werror -c $(@:.o=.c) -o $@

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)
clean:
	rm -f $(OBJS) $(BOBJS)
fclean: clean
	 rm -f $(NAME)
re: fclean $(NAME)

bonus: .bonus

.bonus: $(OBJS) $(BOBJS)
	ar  rcs $(NAME) $(OBJS) $(BOBJS)
	touch	.bonus
.PHONY: all clean fclean re
