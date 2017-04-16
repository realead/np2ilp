
.PHONY : tsp

export CPP = g++
export LD = g++

export CFLAGS = -std=c++11 -fPIC -pedantic -Wall -Wextra -march=native


all : graphlib tsp

graphlib : 
	cd npgraph && $(MAKE)

tsp :
	cd tsp && $(MAKE)



