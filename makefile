all: test

test: test.o
	g++ -lgtest -lgtest_main -o $@ $^

clean:
	rm -f test *.o

%.o : %.cc
	g++ -fkeep-inline-functions -o $@ -c $<
