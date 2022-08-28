#rule: dependencies
#     action

C_COMPILER:=Gcc

C_FILES:=../example.c 
C_FILES+=../func.c 

OBJ_FILES:=example.o 
OBJ_FILES+=func.o 

EXE_FILE:=main.out

all: clean linking

build: $(C_FILES)
	@echo "starting to build files"
	@$(C_COMPILER) -c $(C_FILES)

linking: build
	@echo "linking object files"
	@$(C_COMPILER) $(OBJ_FILES) -o $(EXE_FILE) 
	@echo "exe file generated"

clean:
	@rm -rf *.o *.out