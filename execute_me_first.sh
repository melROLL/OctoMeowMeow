#!/bin/bash
echo "==================================================================="
echo"This scripts install the requierement necessaries to build the image"
echo "==================================================================="
sudo apt update 
wait
sudo apt-get update 
wait
sudo apt-get install virtualbox -y
wait
sudo apt install vagrant git -y
wait
sudo apt upgrade -y
wait
./octomeow.sh box #
wait
./octomew.sh assets #download all the assets 

echo "========================"
echo "OctoMeow is ready to run"
echo "========================"
