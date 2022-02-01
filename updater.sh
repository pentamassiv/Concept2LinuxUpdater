#!/bin/bash
# Create the folder Concept2 in the users Downloads folder
mkdir -p $HOME/Downloads/Concept2/Firmware
cd $HOME/Downloads/Concept2/Firmware

# Download the official firmware from their servers and save it in the newly created folder
# For some reason the order in which you download the files is important!
curl https://firmware.concept2.com/files/pm3_euro_R108B000.7z --output pm3_euro_R108B000.7z https://firmware.concept2.com/files/pm3a_eurochinese_R332B000.7z --output pm3a_eurochinese_R332B000.7z https://firmware.concept2.com/files/pm3aski_eurochinese_R732B000.7z --output pm3aski_eurochinese_R732B000.7z https://firmware.concept2.com/files/pm4_eurochinese_R029B000.7z --output pm4_eurochinese_R029B000.7z https://firmware.concept2.com/files/pm4a_eurochinese_R332B000.7z --output pm4a_eurochinese_R332B000.7z https://firmware.concept2.com/files/pm4aski_eurochinese_R732B000.7z --output pm4aski_eurochinese_R732B000.7z https://firmware.concept2.com/files/pm5_eurochinesebin_pub_secure_R032B000.7z --output pm5_eurochinesebin_pub_secure_R032B000.7z https://firmware.concept2.com/files/pm5_zhjakobin_pub_secure_R032B000.7z --output pm5_zhjakobin_pub_secure_R032B000.7z https://firmware.concept2.com/files/pm5ski_eurochinesebin_pub_secure_R732B000.7z --output pm5ski_eurochinesebin_pub_secure_R732B000.7z https://firmware.concept2.com/files/pm5ski_zhjakobin_pub_secure_R732B000.7z --output pm5ski_zhjakobin_pub_secure_R732B000.7z https://firmware.concept2.com/files/pm5v2_eurochinesebin_pub_secure_R171B000.7z --output pm5v2_eurochinesebin_pub_secure_R171B000.7z https://firmware.concept2.com/files/pm5v2_zhjakobin_pub_secure_R171B000.7z --output pm5v2_zhjakobin_pub_secure_R171B000.7z https://firmware.concept2.com/files/pm5v2bk_eurochinesebin_pub_secure_R329B000.7z --output pm5v2bk_eurochinesebin_pub_secure_R329B000.7z https://firmware.concept2.com/files/pm5v2bk_zhjakobin_pub_secure_R329B000.7z --output pm5v2bk_zhjakobin_pub_secure_R329B000.7z https://firmware.concept2.com/files/pm5v2ski_eurochinesebin_pub_secure_R871B000.7z --output pm5v2ski_eurochinesebin_pub_secure_R871B000.7z https://firmware.concept2.com/files/pm5v2ski_zhjakobin_pub_secure_R871B000.7z --output pm5v2ski_zhjakobin_pub_secure_R871B000.7z

# Unzip the files
for f in $HOME/Downloads/Concept2/Firmware/*.7z; do
    7z e "$f"
done