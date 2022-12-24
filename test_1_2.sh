#!/bin/bash
bash mem.bash &
bash mem2.bash &

> test_1_2_out

while true; do
	data=$(top -b)
	echo "$data" | head -n 15 >> test_1_2_out
	echo "$data" | grep "mem.bash" >> test_1_2_out
	echo "$data" | grep "mem2.bash" >> test_1_2_out
done
dmesg | grep "mem[2]*.bash" > test_1_2_log
cat "report.log" | tail -n 1 >> test_1_2_output
cat "report2.log" | tail -n 1 >> test_1_2_output
