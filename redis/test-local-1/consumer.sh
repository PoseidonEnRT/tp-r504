#!/bin/bash
if ! [ $? = 0 ]
then
  echo "Erreur, pas de connexion avec le serveur redis"
  exit 1
fi

QUEUE_NAME="data_queue"
SEUIL=3000
while :
do
  VALUE=$(redis-cli RPOP "$QUEUE_NAME")
  
  if [ "$VALUE" != "" ]; then
    echo "consommateur : Valeur = $VALUE"
    if [ "$VALUE" -gt "$SEUIL" ]; then
      echo "consommateur : $VALUE depasse le seuil de $SEUIL"
      sleep 4
    fi
  else
    sleep 0.1
  fi
done
