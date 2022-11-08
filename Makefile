FLAGS := -O3 -std=c17 -save-temps -Wall -Wuninitialized -Wshadow -Wwrite-strings -Wconversion -Wunreachable-code
EXECUTABLE := main.out

.SILENT: clean run build

.PHONY: all
all: run clean

run: build
	./${EXECUTABLE}

build:
	gcc ${FLAGS} src/*.c -o ${EXECUTABLE}

%.o: %.c
	gcc ${FLAGS} -c $< -o $@

.PHONY: clean
clean:
	rm -f ${EXECUTABLE}
	rm -f *.o
	rm -f *.i
	rm -f *.s