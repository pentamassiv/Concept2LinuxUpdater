#!/bin/bash

DESTINATION=$HOME/Downloads/Concept2/Firmware

mkdir -p $DESTINATION
cd $DESTINATION

FILES=$(pm3_euro_R108B000.7z,pm4_eurochinese_R029B000.7z,pm4a_eurochinese_R332B000.7z,pm3a_eurochinese_R332B000.7z,pm4aski_eurochinese_R732B000.7z,pm3aski_eurochinese_R732B000.7z,pm5v6bk_allbin_pub_secure_R553B007.7z,pm5v6ski_allbin_pub_secure_R500B015.7z,pm5_eurochinesebin_pub_secure_R034B000.7z,pm5v2_eurochinesebin_pub_secure_R173B000.7z,pm5v3_allbin_pub_secure_R212B000.7z,pm5v5_eurochinesebin_pub_secure_R257B000.7z,pm5ski_eurochinesebin_pub_secure_R734B000.7z,pm5v2ski_eurochinesebin_pub_secure_R873B000.7z,pm5v3ski_allbin_pub_secure_R912B000.7z,pm5v5ski_eurochinesebin_pub_secure_R957B000.7z,pm5v2bk_eurochinesebin_pub_secure_R331B000.7z,pm5v3bk_allbin_pub_secure_R364B000.7z,pm5v5bk_eurochinesebin_pub_secure_R407B000.7z,pm5v6_allbin_pub_secure_R454B000.7z)

curl -s -O "https://firmware.concept2.com/files/{$FILES}"
