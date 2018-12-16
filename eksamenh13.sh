#!/bin/bash

E=1
B=16

if [ -z "$1" ]	#True if the "$1"-string is zero
then
	echo "Melding"	#Melding is showing before the program shuts down
	exit $E		#Exit 1 is exiting program if it fails purpose
fi

echo ""$1" "$B" o p" | dc # pops the value off the top set the output radix, p prints the value on the top af the stack, without altering the stack. then newline.
exit 0			  #Successfully exit the program

# b) for å kjøre programmet må man skrive chmod u+x slik at du change modes til bruker u får tilgang til å kjøre x for executable.

# Programmet gjør om input til et hexadecimal output
