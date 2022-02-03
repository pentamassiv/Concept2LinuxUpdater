#!/bin/bash

UNZIP="/usr/local/bin/7z"
JQ="/usr/bin/jq"

DESTINATION=$HOME/Downloads/Concept2/Firmware

mkdir -p $DESTINATION
cd $DESTINATION

TOKEN=
FILES=$(curl -s "https://tech.concept2.com/api/firmware/latest" -H "Authorization: Basic ""$TOKEN" | $JQ -r '.data[] | select(.status == "public") | .files[0].name' | paste -s -d, -)

curl -s -O "https://firmware.concept2.com/files/{$FILES}"

$UNZIP e -y "*.7z" > /dev/null