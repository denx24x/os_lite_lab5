#!/bin/bash
> test_1_1.out
bash mem.bash &
while true; do
	data=$(top -b)
	echo "$data" | head -n 15 >> test_1_1.out
	echo "$data" | grep "mem.bash" >> test_1_1.out
done

