run: main ../cpp/lib.dll
	./main

main: main.nim ../cpp/lib.dll
	nim cpp main.nim

../cpp/lid.dll: ../cpp/lib.cpp
	g++ -shared -o ../cpp/lib.dll ../cpp/lib.cpp