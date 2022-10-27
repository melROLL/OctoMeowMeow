#!/bin/bash

set -e

BOARDS=( "bpim2u" )
echo "==============================="
echo "Build octomeow For The bpim2u"
echo "==============================="
echo "This will build <${BOARDS[@]}>"
printf "Do you want me to clean?[y/N]?"
read -n 1 resp
if [ "$resp" == "y" ] || [ "$resp" == "Y" ] ; then
    set +e
    echo 
    echo "The Maid Is Cleaning.... please wait"
    ./ octomeow.sh clean
    echo "Installing build environment for you...."
    ./ octomeow.sh box
    ./ octomeow.sh assets
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
