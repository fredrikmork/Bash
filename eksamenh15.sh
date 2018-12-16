#!/bin/bash			 #forteller at det er bash-script

read -p "Antall? : " num	#printer ut det som er inne i strengen
				#og gir brukeren mulighet til å skriv inn
				#en parameter (int)
c=0				
k=0				#setter ulike variabler til verdier
n=2				

echo 1				#skriver 1 til stdout

while [ $k -ne $num ]		#hvis k=0 er forskjellig til input
do
	for i in 'seq 1 $n'	#for-loop fra 1 til n
	do
		(( r = n % i ))	#gjør en modulo på n som settes til r
		if [ $r -eq 0 ]	#hvis moduloen bli 0
		then
			(( c++ ))	#inkrementer c
		fi
	done			#for-loop ferdig
	
	if [ $c -eq  2 ]	#hvis c er lik 2
	then
		echo "$i"	#printer ut verdien til i
		(( k++ ))	#inkrementerer k
	fi
	(( n++ )) 		#inkrementerer n
	c=0			#setter c lik 0
done				#programmet ferdig
