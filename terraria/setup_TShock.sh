#! /bin/bash

mkdir -p $TERRARIA_ROOT
cd TERRARIA_ROOT/..
mkdir Release
cd Release
curl -LJO https://github.com/Pryaxis/TShock/releases/download/v4.4.0-pre15/TShock4.4.0_Pre15_Terraria1.4.1.2.zip
unzip TShock.zip
cd TShock4.4.0_Pre15_Terraria1.4.1.2
mono TerrariaServer.exe

