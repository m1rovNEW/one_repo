#!/bin/bash

df -h | sed '/\/dev\/sda/!d' >> /home/bobrov/memory/hdd.log
