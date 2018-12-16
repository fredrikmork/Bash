#!/bin/bash

FILES=ls | wc -c	#Byte count til alle i listen
for FILE in $FILES
do
	if [[  FILE -gt 1000000 ]]
	then
		echo "$FILE"
	fi
done 
