all: context_asm.S ctx_switch.c
	gcc -c context_asm.S -o context_asm.o -ggdb3 
	gcc -c ctx_switch.c -o ctx_switch.o -ggdb3 
	gcc ctx_switch.o context_asm.o -o run -ggdb3

clean:
	rm -f context_asm.o ctx_switch.o run
