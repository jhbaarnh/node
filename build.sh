#!/bin/bash

PATH=/usr/itm/python/3.7.4-test/bin:$PATH
PATH=/usr/itm/make/4.1/bin:$PATH
PATH=/usr/itm/binutils/2.32/bin:$PATH
export PATH
export CC=/usr/itm/gcc/11.1.0/bin/gcc
export CXX=/usr/itm/gcc/11.1.0/bin/g++

# For clock_gettime
export LDFLAGS=-lrt

./configure --prefix=/disk2/jhbaarnh/simics/node-install
# For libstdc++
export LD_LIBRARY_PATH=/usr/itm/gcc/11.1.0/lib64
make -j 40
