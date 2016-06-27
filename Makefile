CC = g++
CFLAGS = -std=c++11

all:main.o CmdManager.o CourseManager.o Course.o
	$(CC) $(CFLAGS) main.o CmdManager.o CourseManager.o Course.o -o cmsys

main.o: main.cpp CmdManager.h
	$(CC) $(CFLAGS) -c main.cpp
CmdManager.o: CmdManager.cpp CmdManager.h
	$(CC) $(CFLAGS) -c CmdManager.cpp
CourseManager.o: CourseManager.cpp CourseManager.h
	$(CC) $(CFLAGS) -c CourseManager.cpp
Course.o: Course.cpp Course.h
	$(CC) $(CFLAGS) -c Course.cpp

clean:
	rm *.o cmsys