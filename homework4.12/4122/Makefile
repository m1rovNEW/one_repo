CC=g++

all:	hello tarf md5f

hello:	main.o factorial.o hello.o
	$(CC) main.o factorial.o hello.o -o hello

main.o:	main.cpp
	$(CC) -c main.cpp

factorial.o: factorial.cpp
	$(CC) -c factorial.cpp

hello.o: hello.cpp
	$(CC) -c hello.cpp

md5f: factorial.cpp.md5 functions.h.md5 hello.cpp.md5 main.cpp.md5

factorial.cpp.md5: factorial.cpp
	md5sum factorial.cpp > factorial.cpp.md5

functions.h.md5: functions.h
	md5sum functions.h > functions.h.md5

hello.cpp.md5: hello.cpp
	md5sum hello.cpp > hello.cpp.md5

main.cpp.md5: main.cpp
	md5sum main.cpp > main.cpp.md5

tarf: factorial.cpp functions.h hello.cpp main.cpp
	tar -zvcf project.tar.gz factorial.cpp functions.h hello.cpp main.cpp

clean:
	rm hello main.o factorial.o hello.o main.cpp.md5\
	 hello.cpp.md5 functions.h.md5 factorial.cpp.md5
