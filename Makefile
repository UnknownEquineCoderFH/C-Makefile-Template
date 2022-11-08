FLAGS := -O3 -std=c17 -save-temps -Wall -Werror -Wuninitialized -Wshadow -Wwrite-strings -Wconversion -Wunreachable-code
EXECUTABLE := main.out

.SILENT: clean run build

.PHONY: all
all: run

run: build
	./${EXECUTABLE}

build:
	gcc src/*.c -o ${EXECUTABLE}

%.o: %.c
	gcc -c $< -o $@

.PHONY: clean
clean:
	rm -f ${EXECUTABLE}
	find ./src -name "*.o" -type f -delete