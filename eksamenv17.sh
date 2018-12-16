#! /bin/bash

if [ $# -ne 1 ] 	#hvis antall input er forkjellig til 1 får vi feilmelding og lukker programmet
then 			#Starter if
	echo 'Feil'	#Printer ut feil om antall input er 0 eller mer enn 1
	exit 1		#exit 1 betyr avslutt programmet med feilmld.
fi			#Avslutter if

result=1				 #lager konstant variabel med verdi 1
n=$1					 #setter n som input
while (( n >= 1 ))	 		 #så lenge n er større eller lik 1 så kjører loopen 
do 					 #starter loopen
	(( result = n * result ))	 #(()) betyr numerisk kalkulering
	(( n = n - 1 ))			 # trekker fra 1 hver gang den kjøres
done					 #avslutter loopen
echo $result				

# b) Printer resultatet som er n sin fakultet

# c)
# For å få programmet til å kjøre må man forandre Accept rights på bruker
# det kan man gjøre ved chmod u+x eller change modes. u+x betyr at du legger
# til executable for user eller owner som gjør at user kan kjøre programmet
