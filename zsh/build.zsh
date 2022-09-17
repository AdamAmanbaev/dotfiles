g++ -DLOCAL -DDEBUG -fsanitize=undefined,address -O3 -std=c++20 -o $1 $1.cpp
