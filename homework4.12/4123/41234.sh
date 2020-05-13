#!/bin/bash

uptime | awk '{print "load average last 15 minutes = " $10}'\
 >> /home/bobrov/memory/avgcpu.log
