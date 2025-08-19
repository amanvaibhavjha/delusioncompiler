OBJECTS=
INCLUDES= -I./

all: ${OBJECTS}
	clang main.c ${INCLUDES} ${OBJECTS} -g -o ./main 

clean:
	rm ./main
	rm -rf ${OBJECTS}