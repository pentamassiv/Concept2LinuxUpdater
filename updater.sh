#!/bin/bash

DESTINATION=$HOME/Downloads/Concept2/Firmware

mkdir -p $DESTINATION
cd $DESTINATION

FILES=$(pm3_euro_R108B000.7z,pm4_eurochinese_R029B000.7z,pm4a_eurochinese_R332B000.7z,pm3a_eurochinese_R332B000.7z,pm4aski_eurochinese_R732B000.7z,pm3aski_eurochinese_R732B000.7z,pm5v3_allbin_pub_secure_R211B000.7z,pm5v3ski_allbin_pub_secure_R911B000.7z,pm5v3bk_allbin_pub_secure_R363B000.7z,pm5v6_allbin_pub_secure_R452B003.7z,pm5v6bk_allbin_pub_secure_R551B000.7z,pm5_eurochinesebin_pub_secure_R033B000.7z,pm5ski_eurochinesebin_pub_secure_R733B000.7z,pm5v2_eurochinesebin_pub_secure_R172B000.7z,pm5v2ski_eurochinesebin_pub_secure_R872B000.7z,pm5v2bk_eurochinesebin_pub_secure_R330B000.7z,pm5v5bk_eurochinesebin_pub_secure_R406B000.7z,pm5v5_eurochinesebin_pub_secure_R256B000.7z,pm5v5ski_eurochinesebin_pub_secure_R956B000.7z)

curl -s -O "https://firmware.concept2.com/files/{$FILES}"
