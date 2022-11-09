#!/bin/bash

make

taskset -c 2 ./dgemm 100 100 >> perf/dgemm_gcc_$1.dat

sed -n "2p;" perf/dgemm_gcc_$1.dat >> perf/gcc/dgemm_gcc_$1_ijk.dat
sed -n "3p;" perf/dgemm_gcc_$1.dat >> perf/gcc/dgemm_gcc_$1_ikj.dat
sed -n "4p;" perf/dgemm_gcc_$1.dat >> perf/gcc/dgemm_gcc_$1_iex.dat
sed -n "5p;" perf/dgemm_gcc_$1.dat >> perf/gcc/dgemm_gcc_$1_unroll.dat
sed -n "6p;" perf/dgemm_gcc_$1.dat >> perf/gcc/dgemm_gcc_$1_cblas.dat

rm dgemm
