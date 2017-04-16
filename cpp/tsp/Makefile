
CPP = g++
LD = g++

TARGETDIR =  ../../bin/
TRAGET_HASH = $(TARGETDIR)/tsp_hash
ODIR = objects

INCLUDES = -I../npgraph
LPATH = -L../../bin
LIBRARIES = -lNPGraph

CFLAGS = -std=c++11 -fPIC -pedantic -Wall -Wextra -march=native
LFLAGS = -shared

headers = $(wildcard *.h)
sources = $(wildcard *.cpp)
objects = $(sources:.cpp=.o)


all : tsp_hash tsp_tree tsp_opt

tsp_hash: $(ODIR)/held_karp_hash.o $(headers) | $(TARGETDIR)
	$(LD) $(LFLAGS) $(LPATH) $< $(LIBRARIES) -o $(TARGETDIR)/$@


tsp_tree: $(ODIR)/held_karp_tree.o $(headers) | $(TARGETDIR)
	$(LD) $(LFLAGS) $(LPATH) $< $(LIBRARIES) -o $(TARGETDIR)/$@


tsp_opt: $(ODIR)/tsp_opt.o $(headers) | $(TARGETDIR)
	$(LD) $(LFLAGS) $(LPATH) $<  $(LIBRARIES) -o $(TARGETDIR)/$@
    

#objects should be build in ODIR
OBJS = $(patsubst %,$(ODIR)/%,$(objects))

$(ODIR)/%.o : %.cpp $(headers) | $(ODIR)
	$(CPP) -c $(CFLAGS) -o $@ $< $(INCLUDES)


#create if non existent
$(ODIR) :  
	@mkdir -p $(ODIR)

$(TARGETDIR) :  
	@mkdir -p $(TARGETDIR)

clean :
	rm -rf $(ODIR)
	rm -f $(TARGETDIR)/tsp_tree
	rm -f $(TARGETDIR)/tsp_hash
	rm -f $(TARGETDIR)/tsp_opt




 



