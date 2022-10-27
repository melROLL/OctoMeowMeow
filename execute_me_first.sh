#!/bin/bash
echo "========================================================================"
echo "========================================================================"
echo "= This scripts install the requierement necessaries to build the image ="
echo "========== Sit down and relax this might take a few minutes ============"
echo "========================================================================"
echo "========================================================================"
sudo apt update 
wait
sudo apt-get update 
wait
sudo chmod +x execute_me_first.sh 
wait
sudo chmod +x build_all.sh build_M2U.sh build_M2Z.sh execute_me_first.sh 
wait
sudo chmod +x octocitrico.sh octomeow.sh
wait
wait
sudo apt-get install virtualbox -y
wait
sudo apt install vagrant git vlc espeak -y
wait
sudo apt upgrade -y
wait
./octomeow.sh box 
wait
echo "================================================================="
echo "================================================================="
echo "= Get yourself a coffee while we are downloading all the assets ="
echo "================================================================="
echo "================================================================="
./octomeow.sh assets #download all the assets 
espeak -a 200 “The script has finished running” # notify when it is finish
echo "==================================================="
echo "==================================================="
echo "= Get your programming socks on and some coffee ! ="
echo "============ it is time to compile ! =============="
echo "==================================================="
echo "==================================================="
