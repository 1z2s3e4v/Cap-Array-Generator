CC=g++
LDFLAGS=-std=c++11 -lm -g
SOURCES=src/paramHdl.cpp src/parser.cpp src/dm.cpp src/data.cpp src/PR.cpp src/draw.cpp src/main.cpp 
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=gen_capArray
INCLUDES=src/parser.h src/dm.h src/paramHdl.h src/draw.h src/PR.h src/data.h

all: $(SOURCES) bin/$(EXECUTABLE)

bin/$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

%.o:  %.cpp ${INCLUDES}
	$(CC) $(LDFLAGS) $< -c -o $@

c1:
	bin/gen_capArray -genlayout -input input/4bit.txt
c2:
	bin/gen_capArray -genlayout -input input/4bit.txt -out output/path.txt -spf input/ARRAY_CMP_T1_PI.spf
c3:
	bin/gen_capArray -genlayout -input input/4bit.txt -out output/path.txt -cfg_file input/cfg.txt
csp:
	bin/gen_capArray -genlayout -sp input/ARRAY_CMP.sp -out output/path
c4:
	bin/gen_capArray -genparaRpt -spf input/ARRAY_CMP_T1_FI.spf -input input/4bit.txt
c5:
	bin/gen_capArray -genparaRpt -spf input/ARRAY_CMP_T1_NI.spf -input input/4bit.txt
c6:
	bin/gen_capArray -genparaRpt -spf input/ARRAY_CMP_T1_PI.spf -input input/4bit.txt
c7:
	bin/gen_capArray -genparaRpt -spf input/spf/ARRAY_CMP_T1_PI_test_matching.spf -input input/4bit.txt

c:
	rm -rf *.o src/*.o bin/$(EXECUTABLE) *.out bin/*.out dump
clena:
	rm -rf *.o src/*.o bin/$(EXECUTABLE) *.out bin/*.out dump
clean:
	rm -rf *.o src/*.o bin/$(EXECUTABLE) *.out bin/*.out dump
