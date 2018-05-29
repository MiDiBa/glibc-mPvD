#!/bin/bash

if [ -f perf_noPvD.txt ]; then
    rm perf_noPvD.txt
fi

if [ -f perf_PvD.txt ]; then
    rm perf_PvD.txt
fi

for value in {1..100}
do
    sudo ./run_tests.sh dns_resolv_perf 0 www.google.fr >> perf_noPvD.txt
    sudo ./run_tests.sh dns_resolv_perf 1 www.google.fr >> perf_PvD.txt
done


