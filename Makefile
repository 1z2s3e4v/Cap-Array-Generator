CC=g++
LDFLAGS=-std=c++11 -lm -g
SOURCES=src/paramHdl.cpp src/parser.cpp src/dm.cpp src/draw.cpp src/main.cpp 
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=gen_capArray
INCLUDES=src/parser.h src/dm.h src/paramHdl.h src/draw.h

all: $(SOURCES) bin/$(EXECUTABLE)

bin/$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

%.o:  %.cpp ${INCLUDES}
	$(CC) $(LDFLAGS) $< -c -o $@

c0:
	bin/gen_capArray -genlayout -simpleInput input/simple4bit.txt -out output/path.txt
c1:
	bin/gen_capArray -genlayout -simpleInput input/simple4bit.txt -out output/path.txt -spf input/ARRAY_CMP_T1_PI.spf
c2:
	bin/gen_capArray -genlayout -simpleInput input/simple4bit.txt -out output/path.txt -cfg_file input/cfg.txt
csp:
	bin/gen_capArray -genlayout -sp input/ARRAY_CMP.sp -out output/path
c3:
	bin/gen_capArray -genparaRpt -spf input/ARRAY_CMP_T1_FI.spf -simpleInput input/simple4bit.txt
c4:
	bin/gen_capArray -genparaRpt -spf input/ARRAY_CMP_T1_NI.spf -simpleInput input/simple4bit.txt
c5:
	bin/gen_capArray -genparaRpt -spf input/ARRAY_CMP_T1_PI.spf -simpleInput input/simple4bit.txt

c:
	rm -rf *.o src/router/*.o bin/$(EXECUTABLE) *.out bin/*.out dump
clena:
	rm -rf *.o src/router/*.o bin/$(EXECUTABLE) *.out bin/*.out dump
clean:
	rm -rf *.o src/router/*.o bin/$(EXECUTABLE) *.out bin/*.out dump
