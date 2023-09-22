#!/bin/sh
if [ -z $1 ] || [ -z $2 ]
then
	echo "Invalid input"
else
	if [ $1 -gt 0 ] && [ $2 -gt 0 ]
	then
		for i in $(seq 1 $1)
		do
			for j in $(seq 1 $2)
			do
				result=`expr $i \* $j`
				printf "%d*%d=%d\t" $i $j $result
			done
			printf "\n"
		done
	else
		echo "Input must be greater than 0"
	fi
fi
exit 0
