#!/bin/bash
redis-cli DBSIZE >/dev/null
if ! [ $? = 0 ]
then
  echo "Erreur, pas de connexion avec le serveur redis"
  exit 1
fi

QUEUE_NAME="data_queue"
while :
do
   for ((i=0;i<n;i++))
   do
     redis-cli LPUSH mafile $RANDOM
 done
   sleep 3
 
