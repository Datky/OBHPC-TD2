#!/bin/bash

make

taskset -c 2 ./dgemm 100 100 >> perf/$1/dgemm_$1_$2.dat

sed -n "2p;" perf/$1/dgemm_$1_$2.dat >> perf/$1/dgemm_$1_$2_ijk.dat
sed -n "3p;" perf/$1/dgemm_$1_$2.dat >> perf/$1/dgemm_$1_$2_ikj.dat
sed -n "4p;" perf/$1/dgemm_$1_$2.dat >> perf/$1/dgemm_$1_$2_iex.dat
sed -n "5p;" perf/$1/dgemm_$1_$2.dat >> perf/$1/dgemm_$1_$2_unroll.dat
sed -n "6p;" perf/$1/dgemm_$1_$2.dat >> perf/$1/dgemm_$1_$2_cblas.dat

rm dgemm
