#!/bin/bash

DESTINATION=$HOME/Downloads/Concept2/Firmware

mkdir -p $DESTINATION
cd $DESTINATION

FILES=$()

curl -s -O "https://firmware.concept2.com/files/{$FILES}"
