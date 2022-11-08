FLAGS := -O3 -std=c17 -Wall -Wuninitialized -Wshadow -Wwrite-strings -Wconversion -Wunreachable-code
EXECUTABLE := main

.SILENT: clean run build

.PHONY: all
all: run clean

run: build
	./bin/${EXECUTABLE}

build:
	gcc ${FLAGS} src/*.c -o bin/${EXECUTABLE}

%.o: %.c
	gcc ${FLAGS} -c $< -o $@

.PHONY: clean
clean:
	rm -f bin/${EXECUTABLE}
