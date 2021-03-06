#!/bin/bash

DESTINATION=$HOME/Downloads/Concept2/Firmware

mkdir -p $DESTINATION
cd $DESTINATION

FILES=$(pm3_euro_R108B000.7z,pm4_eurochinese_R029B000.7z,pm3a_eurochinese_R332B000.7z,pm4a_eurochinese_R332B000.7z,pm4aski_eurochinese_R732B000.7z,pm3aski_eurochinese_R732B000.7z,pm5_eurochinesebin_pub_secure_R032B000.7z,pm5ski_eurochinesebin_pub_secure_R732B000.7z,pm5v2_eurochinesebin_pub_secure_R171B000.7z,pm5v2ski_eurochinesebin_pub_secure_R871B000.7z,pm5v2bk_eurochinesebin_pub_secure_R329B000.7z,pm5v3_allbin_pub_secure_R210B000.7z,pm5v3ski_allbin_pub_secure_R910B000.7z,pm5v3bk_allbin_pub_secure_R361B000.7z,pm5v5bk_eurochinesebin_pub_secure_R402B000.7z,pm5v5ski_eurochinesebin_pub_secure_R952B000.7z,pm5v5_eurochinesebin_pub_secure_R252B000.7z)

curl -s -O "https://firmware.concept2.com/files/{$FILES}"
