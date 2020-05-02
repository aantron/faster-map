.PHONY : run
run :
	dune build --profile=dev tester/tester.exe reporter/reporter.exe
	mkdir -p _report
	_build/default/tester/tester.exe -ascii -quota 10 > _report/core_bench.txt
	_build/default/reporter/reporter.exe \
	  < _report/core_bench.txt > _report/results.txt
	gnuplot reporter/graph.gnuplot

.PHONY : test-correctness
test-correctness :
	dune build --profile=dev correctness/correctness.exe
	_build/default/correctness/correctness.exe

MEMORY_TESTS := $(shell ls memory/*/test.ml)
MEMORY_TESTS := $(MEMORY_TESTS:.ml=.exe)

.PHONY : compare-memory-usage
compare-memory-usage :
	dune build --profile=dev $(MEMORY_TESTS)
	@echo "map             stack   heap    total"
	@for TEST in $(MEMORY_TESTS) ; \
	do \
	  _build/default/$$TEST || exit 1 ; \
	done

.PHONY : depend
depend :
	opam pin add -yn faster-map .
	opam install -y --deps-only faster-map
	which gnuplot || (echo "Please install gnuplot"; false)

.PHONY : clean
clean :
	dune clean
	rm -rf _report
