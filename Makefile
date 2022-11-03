.PHONY: all
all: main

main: src/main.o src/lib.o
	gcc -o $@ $^

%.o: %.c
	gcc -c $< -o $@

.PHONY: clean
clean:
	rm -f main
	find ./src -name "*.o" -type f -delete