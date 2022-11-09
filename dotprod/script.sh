#!/bin/bash

make

taskset -c 2 ./dotprod 100 100 > perf/$1/dotprod_$1_$2.dat

sed -n "2p;" perf/$1/dotprod_$1_$2.dat > perf/$1/dotprod_$1_$2_base.dat
sed -n "3p;" perf/$1/dotprod_$1_$2.dat > perf/$1/dotprod_$1_$2_unrollx8.dat


rm dotprod
