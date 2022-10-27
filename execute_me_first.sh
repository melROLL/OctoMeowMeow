#!/bin/bash
echo "======================================================================="
echo "======================================================================="
echo"= This scripts install the requierement necessaries to build the image ="
echo"========== Sit down and relax this might take a few minutes ============"
echo "======================================================================="
echo "======================================================================="
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
sudo apt install vagrant git -y
wait
sudo apt upgrade -y
wait
./octomeow.sh box 
wait
./octomeow.sh assets #download all the assets 
echo "=================================================="
echo "=================================================="
echo "= Get your programming socks on and some coffe ! ="
echo "=========== it is time to compile ! =============="
echo "=================================================="
echo "=================================================="
