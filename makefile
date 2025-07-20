CC = g++
CFLAGS = -Wall -Wextra
DEBUG_FLAGS = -Wall -Wextra -g

TARGET = main

SRC = src/main.cpp src/menu.cpp
OBJS = $(SRC:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

run:
	./$(TARGET)

clean:
	rm -f src/*.o src/$(TARGET)

.PHONY: run clean