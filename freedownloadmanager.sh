#!/bin/bash

echo "Downloading dependencies..."

wget -c -nv https://raw.githubusercontent.com/FanderWasTaken/freedownloadmanager-linux-appimage/main/freedownloadmanager.yml
wait
wget -c -nv https://github.com/AppImageCommunity/pkg2appimage/releases/download/continuous/pkg2appimage-1807-x86_64.AppImage
wait

chmod +x ./pkg2appimage-*.AppImage
wait

echo "Buidling the .appimage"

./pkg2appimage-*.AppImage ./freedownloadmanager.yml
wait

echo "Clearing up..."

rm ./freedownloadmanager.yml
wait
rm ./pkg2appimage-*.AppImage
wait
rm -d -r ./freedownloadmanager
wait

echo "Done!"
