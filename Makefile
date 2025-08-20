OBJECTS= ./build/compiler.o ./build/cprocess.o ./build/helpers/buffer.o ./build/helpers/vector.o
INCLUDES= -I./

all: ${OBJECTS}
	clang main.c ${INCLUDES} ${OBJECTS} -g -o ./main 

./build/compiler.o: ./compiler.c
	clang ./compiler.c ${INCLUDES} -o ./build/compiler.o -g -c

./build/cprocess.o: ./cprocess.c
	clang ./cprocess.c ${INCLUDES} -o ./build/cprocess.o -g -c

./build/helpers/buffer.o: ./helpers/buffer.c
	clang ./helpers/buffer.c ${INCLUDES} -o ./build/helpers/buffer.o -g -c

./build/helpers/vector.o: ./helpers/vector.c
	clang ./helpers/vector.c ${INCLUDES} -o ./build/helpers/vector.o -g -c

clean:
	rm ./main
	rm -rf ${OBJECTS}