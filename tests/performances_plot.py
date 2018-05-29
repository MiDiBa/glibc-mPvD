#! /usr/bin/env python

import numpy as np
from matplotlib import pyplot as plt


def load_values(file_name):
    first = list()
    second = list()
    i = 0

    file = open(file_name, "r")
    lines = file.readlines()

    for line in lines:
        split_line = line.split(' ')

        if (i % 2) == 0:
            first.append((float(split_line[1]) - float(split_line[0]))*1000)
        else:
            second.append((float(split_line[1]) - float(split_line[0]))*1000)

        i += 1

    return first, second


if __name__ == "__main__":
    PvD_first, PvD_second = load_values("perf_PvD.txt")
    noPvD_first, noPvD_second = load_values("perf_noPvD.txt")

    # First DNS resolution pot
    plt.figure()
    plt.xlabel("Test identifier")
    plt.ylabel("Time (ms)")
    plt.plot(PvD_first)
    plt.plot(noPvD_first)
    plt.legend(("PvD bounded process", "PvD free process"), loc='best')
    plt.savefig("first_query_perf.png", format="png")

    # Second DNS resolution pot
    plt.figure()
    plt.xlabel("Test identifier")
    plt.ylabel("Time (ms)")
    plt.plot(PvD_second)
    plt.plot(noPvD_second)
    plt.legend(("PvD bounded process", "PvD free process"), loc='best')
    plt.savefig("second_query_perf.png", format="png")

    print("PvD first median: ", np.median(PvD_first))
    print("noPvD first median: ", np.median(noPvD_first))
    print("PvD second median: ",np.median(PvD_second))
    print("noPvD second median: ",np.median(noPvD_second))

    pass
