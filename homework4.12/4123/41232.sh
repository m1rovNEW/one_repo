#!/bin/bash

free -h | sed '2!d' >> ~/memory/stat
