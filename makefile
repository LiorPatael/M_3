
FLAGS= -Wall -g

all:isort txtfind 
#pashut tafil et main
#sequence of rulles
isort:main_isort.o isort.o 
	gcc $(FLAGS) -o isort main_isort.o isort.o

txtfind:main_txtfind.o txtfind.o #be mida ve eshnui tekampel li txxtfind.c shuv
	gcc $(FLAGS) -o txtfind main_txtfind.o txtfind.o
#main_txtfind:main_txtfind.o txtfind.o
	
main_isort.o: main_isort.c isort.h  
	gcc $(FLAGS) -c  main_isort.c


isort.o:isort.c isort.h #be mida ve eshnui tekampel li isort.c shuv
	gcc $(FLAGS) -c isort.c

main_txtfind.o:main_txtfind.c txtfind.h #be mida ve eshnui tekampel li txxtfind.c shuv
	gcc $(FLAGS) -c  main_txtfind.c

txtfind.o:txtfind.c txtfind.h
	gcc $(FLAGS) -c txtfind.c
	
run1: txtfind 
	./txtfind
run2: isort
	./isort



.PHONY: clean all
#remove mitbazea rak ad .so yashir yashir rak maind mains
clean:
	rm -f *.o *.a *.so isort txtfind