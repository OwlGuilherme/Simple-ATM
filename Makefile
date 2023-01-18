# Nome do projeto
PROJ_NAME = atm

# Arquivos .cpp
CPP_SOURCE = $(wildcard *.cpp)

# Arquivos .hpp
HPP_SOURCE = $(wildcard *.hpp)

# Arquivos .o (Object files)
OBJ = $(CPP_SOURCE:.cpp=.o)

# Nome do compilador
CC = g++

# Bibliotecas
LIBS = -lsqlite3

# Flags para o compilador
CC_FLAGS=-c         \
         -W         \
         -Wall      \
         -ansi      \
         -pedantic	

# Bibliotecas
LIBS = -lsqlite3

#
# Compilação e linking
#
all: $(PROJ_NAME)

$(PROJ_NAME): $(OBJ)
	$(CC) -o $@ $^ $(LIBS)

%.o: %.cpp %.hpp
	$(CC) -o $@ $< $(CC_FLAGS)

main.o: main.cpp $(HPP_SOURCE)
	$(CC) -o $@ $< $(CC_FLAGS)

clean:
	rm -rf *.o $(PROJ_NAME) *~
