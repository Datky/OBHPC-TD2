#!/bin/bash

make

taskset -c 2 ./reduc 100 100 >> perf/$1/reduc_$1_$2.dat

sed -n "2p;" perf/$1/reduc_$1_$2.dat >> perf/$1/reduc_$1_$2_base.dat
sed -n "3p;" perf/$1/reduc_$1_$2.dat >> perf/$1/reduc_$1_$2_unroll8.dat


rm reduc
