#!/bin/bash

if [ -f perf_noPvD.txt ]; then
    rm perf_noPvD.txt
fi

if [ -f perf_PvD.txt ]; then
    rm perf_PvD.txt
fi

for value in {1..500}
do
    sudo ./run_tests.sh dns_resolv_perf 0 www.twitch.com >> perf_noPvD.txt
    sudo ./run_tests.sh dns_resolv_perf 1 www.twitch.com >> perf_PvD.txt
done


