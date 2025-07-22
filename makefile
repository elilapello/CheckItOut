CC = gcc
CFLAGS = -Wall -Wextra
DEBUG_FLAGS = -Wall -Wextra -g

TARGET = checkit

SRC = src/main.c src/menu_utils.c
OBJS = $(SRC:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

run:
	./$(TARGET)

clean:
	rm -f src/*.o $(TARGET)

.PHONY: run clean