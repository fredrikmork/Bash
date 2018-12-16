#!/bin/bash -x

declare -i COUNT=0

LIST=$(find . -type f -executable)

for LISTE in $LIST
do 
	echo "$LISTE"
	(( COUNT++ ))
done

echo "Det er $COUNT kjørbare filer."
