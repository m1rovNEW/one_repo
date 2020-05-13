#!/bin/bash

vmstat 3 10 | sed '1,2d' | awk '{sum+=$12} END \
{print "average kernel context switches per second = " sum/NR}'\
 >> ~/memory/vmstat.log
