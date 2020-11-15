#! /bin/bash

# Setup
mkdir -p $TERRARIA_ROOT
git clone https://github.com/Pryaxis/TShock.git $TERRARIA_ROOT
cd $TERRARIA_ROOT
git submodule init 
git submodule update 

# Build TerrariaAPI
mono /bin/nuget.exe restore ./TerrariaServerAPI/ 
xbuild ./TerrariaServerAPI/TShock.4.OTAPI.sln /p:Configuration=$BUILD_MODE

cd ./TerrariaServerAPI/TShock.Modifications.Bootstrapper/bin/$BUILD_MODE/
mono TShock.Modifications.Bootstrapper.exe -in=OTAPI.dll \
	-mod=../../../TShock.Modifications.**/bin/$BUILD_MODE/TShock.Modifications.*.dll \
	-o=Output/OTAPI.dll

cd $TERRARIA_ROOT
xbuild ./TerrariaServerAPI/TerrariaServerAPI/TerrariaServerAPI.csproj /p:Configuration=$BUILD_MODE

# Build TShock
cd TShockAPI
mono /bin/nuget.exe restore
xbuild ./TShockAPI.sln /p:Configuration=$BUILD_MODE

# Start TShock
