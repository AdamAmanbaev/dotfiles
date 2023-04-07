g++ -DLOCAL -DDEBUG -fsanitize=undefined,address -O3 -Wno-narrowing -march=native -std=c++20 -o $1 $1.cpp
