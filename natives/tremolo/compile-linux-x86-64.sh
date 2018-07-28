#!/bin/bash

WD="$PWD"

cd ${BASH_SOURCE%/*}

g++ -msse3 -mavx2 -O3 -shared -fPIC -I"${JAVA_HOME}/include/linux" -I"${JAVA_HOME}/include" -I"tremolo-effect" -std=c++17 -o "$WD/libtremolo.so" *.cpp tremolo-effect/*.cpp