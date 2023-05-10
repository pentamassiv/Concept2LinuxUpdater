#!/bin/bash

DESTINATION=$HOME/Downloads/Concept2/Firmware

mkdir -p $DESTINATION
cd $DESTINATION

FILES=$(pm3_euro_R108B000.7z,pm4_eurochinese_R029B000.7z,pm4a_eurochinese_R332B000.7z,pm3a_eurochinese_R332B000.7z,pm4aski_eurochinese_R732B000.7z,pm3aski_eurochinese_R732B000.7z,pm5v6_allbin_pub_secure_R453B014.7z,pm5v6bk_allbin_pub_secure_R553B005.7z,pm5v6ski_allbin_pub_secure_R500B014.7z,pm5_eurochinesebin_pub_secure_R034B000.7z,pm5ski_eurochinesebin_pub_secure_R734B000.7z)

curl -s -O "https://firmware.concept2.com/files/{$FILES}"
