import exetest.decorator as dec
import exetest as ex



class TSPTester:
    parameters = {ex.EXIT_CODE: 0}

    casedata_two_nodes = {ex.INPUT: "1 2 10\n2 1 11\n",
                          ex.STDOUT: "21\n"}


@dec.to_unit_tests
class HashTSPTester(TSPTester):
   exe="tsp_hash"


@dec.to_unit_tests
class OptTSPTester(TSPTester):
   exe="tsp_opt"


@dec.to_unit_tests
class TreeTSPTester(TSPTester):
   exe="tsp_tree"
