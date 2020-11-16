#! /bin/bash

mkdir -p $TERRARIA_ROOT
cd $TERRARIA_ROOT
curl -LJO https://github.com/Pryaxis/TShock/releases/download/v4.4.0-pre15/TShock4.4.0_Pre15_Terraria1.4.1.2.zip
mv TShock4.4.0_Pre15_Terraria1.4.1.2.zip TShock.zip
unzip TShock.zip