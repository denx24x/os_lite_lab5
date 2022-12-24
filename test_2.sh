#!/bin/bash
k=$1
n=$2
for i in $(seq 1 $k)
do
	bash "newmem.bash" "$n" &
	sleep 1s
done
