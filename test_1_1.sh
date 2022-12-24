#!/bin/bash
> "test_1_1.out"
bash mem.bash &
while true; do
	data=$(top -b -n 1)
	echo "$data" | head -n 15 >> "test_1_1.out"
	echo "$data" | grep "mem.bash" >> "test_1_1.out"
	sleep 2s
done

