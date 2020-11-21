#! /bin/bash

# Create server
cd /var/opt/minecraft/

# GDrive download process per https://stackoverflow.com/a/48133859
fileid="16Cfwzvr6JXSxZpcX3BY06kQ_RrPl5OR5"
filename="server.zip"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

unzip server.zip
rm ${filename} ./cookie

chown -R crafty ./server

