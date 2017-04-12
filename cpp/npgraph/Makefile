
CPP = g++
LD = g++

TARGETDIR =  ../../bin/
TARGET = $(TARGETDIR)/libNPGraph.so
ODIR = objects

CFLAGS = -std=c++11 -fPIC -pedantic -Wall -Wextra -march=native
LFLAGS = -shared

headers = $(wildcard *.h)
sources = $(wildcard *.cpp)
objects = $(sources:.cpp=.o)

#objects should be build in ODIR
OBJS = $(patsubst %,$(ODIR)/%,$(objects))

$(ODIR)/%.o : %.cpp $(headers) 
	$(CPP) -c $(CFLAGS) -o $@ $< 

all : $(OBJS) | $(TARGETDIR)
	$(LD) $(LFLAGS) $(OBJS) -o  $(TARGET)

#ODIR should exist (not more recent!), for objects to build
$(OBJS): | $(ODIR)

#create if non existent
$(ODIR) :  
	@mkdir -p $(ODIR)

$(TARGETDIR) :  
	@mkdir -p $(TARGETDIR)

clean :
	rm -rf $(ODIR)
	rm -f $(TARGET)




 



