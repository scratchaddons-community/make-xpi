#!/bin/sh

if test -d "ScratchAddons"; then
    echo "Please remove the ScratchAddons directory or move to another directory!"
    exit
fi
git clone https://github.com/ScratchAddons/ScratchAddons.git
if test -f "ScratchAddons.xpi"; then
    rm ScratchAddons.xpi
fi
cd ScratchAddons
zip -r ../ScratchAddons.xpi ./*
cd ../
rm -r -f ScratchAddons
echo "ScratchAddons.xpi has been created."
