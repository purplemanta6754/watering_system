#!/bin/ash

# Push to Server, escrito por Michael Bernhard
# Necesario para que el sistema de riego cargue los archivos de registro y los valores umbral desde la tarjeta SD al servidor.
#
# copiar este archivo al sistema de archivos Arduino Yun "/mnt/sd/watering/pushToServer.sh". Por ejemplo, utilizando el comando "scp".
#
# cambiar los "place holders".
# <ftp_server_name>: e.g. ftp://ft_server_name/root_path
# <username>
# <password>

if [ ! "$1" = "" ]; then
  curl -T /mnt/sd/watering/$1 <ftp_server_name>/$1 --user <username>:<password>
fi

