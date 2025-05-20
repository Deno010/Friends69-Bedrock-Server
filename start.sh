#!/bin/bash
echo "Downloading Minecraft Bedrock server v1.21.71..."
wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.21.71.01.zip -O bedrock-server.zip
unzip -o bedrock-server.zip -d bedrock-server
cd bedrock-server
echo "Updating server.properties..."
cat > server.properties <<EOL
server-name=Friends69
max-players=7
gamemode=survival
allow-cheats=false
showcoordinates=true
EOL
echo "Starting Minecraft Bedrock server..."
chmod +x bedrock_server
./bedrock_server