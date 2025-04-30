#!/bin/bash
n=500
redis-cli DBSIZE >/dev/null
if ! [ $? = 0 ]
then
  echo "Erreur, pas de connexion avec le serveur redis"
  exit 1
  else
  	echo "OK!"
fi


while :
do
	taille=$(redis-cli LLEN mafile)
	echo "taille file=$taille"
	for ((i=0;i<$n;i++))
	do
		redis-cli LPUSH mafile $RANDOM >/dev/null
	done
	sleep 3
done

 
