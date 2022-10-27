#!/bin/bash
# thisis a script i want to run on the banana pi after i have installed OctoMeowMeow
#One_bashscript_to_setup_the_M2Z_and_M2U

#!/bin/bash
# One bashscript to rule them all


#downloading everything that is needed
echo "updating and installing"
cd
sudo apt-get update 
wait
sudo apt update 
wait
sudo apt install git -y
wait
git clone https://github.com/LeMaker/RPi.GPIO_BP -b bananapro
wait
#git clone https://git.code.sf.net/p/openocd/codeopenocd-code 
wait
git clone https://github.com/openocd-org/openocd.git
wait
git clone https://github.com/LeMaker/WiringBP -b bananapro
wait
sudo apt install vlc hostapd -y
wait
sudo apt install Apache2
wait
sudo apt install armbian-config make -y
wait
sudo apt install pkg-config libusb-1.0-0 libusb-1.0-0-dev autoconf automake texinfo -y
wait
sudo apt install gpiod -y
wait
sudo apt install python3 -y
wait
sudo apt install python-dev espeak -y
wait 
sudo apt install autoconf libtool -y
wait
sudo apt install python3-pip -y
wait
sudo apt install dbus-x11 chromium apache2 xorg xinit -y
wait
sudo apt-get install alsa-utils -y
wait 
sudo apt install lightdm xorg mpv kiosk -y
wait
sudo apt-get install python3-venv -y
wait
sudo apt upgrade -y
wait
echo "======================================="
echo "======================================="
echo "= everything is updated and installed ="
echo "======================================="
echo "======================================="
#openocd
echo "==================================="
echo "==================================="
echo "=       installing openocd        ="
echo "==================================="
echo "==================================="
cd
#cd openocd-code/
cd openocd/
./bootstrap
wait
./configure --enable-sysfsgpio
wait
Make
wait
sudo make install
wait
echo "==================================="
echo "==================================="
echo "=      openocd is installed       ="
echo "==================================="
echo "==================================="

#GPIO
echo "==================================="
echo "==================================="
echo "=    installing GPIO libraries    ="
echo "==================================="
echo "==================================="
cd
echo "==================================="
echo "=     installing RPi.GPIO_BP      ="
echo "==================================="
cd RPi.GPIO_BP/
python setup.py install
wait
sudo python setup.py install
wait
cd
echo "==================================="
echo "=     installing WiringBP         ="
echo "==================================="
cd WiringBP/
sudo chmod +x ./build
wait
sudo ./build
wait
echo "==================================="
echo "==================================="
echo "= the gpio libraries are installed="
echo "==================================="
echo "==================================="
cd

#other
sudo adduser pi audio

#the end
wait
echo "==================="
echo "==================="
echo "= finished runing ="
echo "==================="
echo "==================="
