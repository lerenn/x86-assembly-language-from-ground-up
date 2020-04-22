default: debug

build:
	nasm -f elf64 -F dwarf -g main.asm
	ld -m elf_x86_64 -o main main.o 

debug: build 
	gdb --batch --command=main.gdb ./main

clean:
	rm -f *.o