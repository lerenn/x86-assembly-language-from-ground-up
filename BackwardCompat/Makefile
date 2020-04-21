default: debug

build:
	nasm -f elf -F dwarf -g main.asm
	ld -m elf_i386 -o main main.o 

debug: build 
	gdb --batch --command=main.gdb ./main

clean:
	rm -f *.o