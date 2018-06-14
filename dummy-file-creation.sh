#!/bin/bash

echo "How many files would like to create?"
read filecount
count=1
while [[ "$count" -le "$filecount" ]] 
do
	# create a number between 0-99 to be used in the random file size
	size=$(( $RANDOM % 100 ))
	# creates a .txt file starting with foo- with the creation count and creates a random size 
	dd if=/dev/urandom of=foo-$count.txt bs="$size"m count=1
	((count++))
done