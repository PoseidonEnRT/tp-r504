#!/bin/bash
x=0
thres=31000
delay=3

if ! [ $? = 0 ]
then
  echo "Erreur, pas de connexion avec le serveur redis"
  exit 1
fi

while :
do
	ls=$(redis-cli --raw LLEN mafile)
	echo "iter=$x, taille liste=$ls"
	if [ $ls -gt 0 ]
	then
		value=$(redis-cli --raw RPOP mafile)
		ls=$(redis-cli --raw LLEN mafile)
		if ! [ "$value" = "" ]
		then
			if [ $value -gt $thres ]
			then
				echo "alarme; val=$value"
				sleep $delay
			fi
		fi
		x=$(( $x+1 ))
	else
		echo "liste vide, terminaison"
		exit 0
	fi
done
