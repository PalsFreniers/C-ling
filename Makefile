CC = gcc
NAME = C-ling
SRCS = src/main.c
HEADER = 
ID = includes
BUILD = build
OBJS = $(SRCS:.c=.o)
CFLAGS = -Wall -Wextra -Werror -I$(ID)
LDFLAGS = 

all: always $(NAME)

$(NAME): $(OBJS)
	$(CC) $(OBJS) $(LDFLAGS) -o $(BUILD)/$(NAME)

%.o : %.c $(HEADER)
	$(CC) $(CFLAGS) $< -c -o $@

fclean: clean
	rm -f  $(BUILD)/$(NAME)
	rm -rf $(BUILD)

clean:
	rm -f $(OBJS)

re: fclean all

always:
	mkdir -p $(BUILD)

.PHONY: all fclean clean re always
