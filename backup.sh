#!/bin/bash
DEST_PATH=$HOME/Scrivania/


if [ "$#" -ne 1 ]; then
	echo -e "\nNUMERO PARAMETRI ERRATO ASINO\n";
	exit;
fi

if [ -d "$1" ]; then

TODAY=$(date +"%y-%m-%d-%T");
FILE="backup.$TODAY";
zip -r $FILE $1;

mv $FILE $DEST_PATH

else
	echo -e "Directory inesistente\n"
	exit;
fi
