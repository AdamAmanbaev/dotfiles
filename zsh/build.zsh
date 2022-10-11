g++ -DLOCAL -DDEBUG -fsanitize=undefined,address -O3 -Wno-narrowing -std=c++20 -o $1 $1.cpp
