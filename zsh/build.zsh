g++ -DLOCAL -DDEBUG -fsanitize=address -fsanitize=undefined -O3 -std=c++20 -o $1 $1.cpp
