#!/bin/bash

set -e

BOARDS=( "opizero" "opione" "opilite" "opipc" "opipcplus" "bpim2z" "bpim2u" "opioneplus" "rock64" )
echo "========================================"
echo "= Build everything for the lazy people ="
echo "========================================"
echo "This will build <${BOARDS[@]}>"
printf "Do you want me to clean for you first?[y/N]?"
read -n 1 resp
if [ "$resp" == "y" ] || [ "$resp" == "Y" ] ; then
    set +e
    echo 
    echo "The Maid Is Cleaning Please Be Patient...."
    ./octomeow.sh clean
    echo "Installing build environment...."
    ./octomeow.sh box
    ./octomeow.sh assets
    echo
    set -e
fi
echo
echo "Building...."
for i in "${BOARDS[@]}"
do
    echo "Build $i with cache...."
    ./octomeow.sh build $i cache
done

exit 0
