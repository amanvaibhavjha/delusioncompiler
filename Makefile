OBJECTS= ./build/compiler.o ./build/cprocess.o
INCLUDES= -I./

all: ${OBJECTS}
	clang main.c ${INCLUDES} ${OBJECTS} -g -o ./main 

./build/compiler.o: ./compiler.c
	clang ./compiler.c ${INCLUDES} -o ./build/compiler.o -g -c

./build/cprocess.o: ./cprocess.c
	clang ./cprocess.c ${INCLUDES} -o ./build/cprocess.o -g -c
clean:
	rm ./main
	rm -rf ${OBJECTS}