#include <iostream>
#include <map>

#include "TSPGraph.h"
#include "HeldKarpTSPSolver.h"

/* uses held-karp algorithm which uses std::set for memoization */

int main(){
    TSPGraph graph=readTSPGraph(std::cin);
    std::cout<<held_karp_sets<std::map>(graph)<<std::endl;
}


