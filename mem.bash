#!/bin/bash
array={}
step=0
> report.log
while true;
do
	array+=(1 2 3 4 5 6 7 8 9 0)
	step=$(($step + 1))
	if ! (( step % 100000 )); then
		echo "$(($step * 10))" >> report.log
	fi
done
