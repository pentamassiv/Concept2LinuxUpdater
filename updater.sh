#!/bin/bash
set -euo pipefail

DESTINATION=${HOME}/Downloads/Concept2/Firmware

# Create temporary folder
temp_dir=$(mktemp -d)

# Get the current versions
curl  -s --output-dir "${temp_dir}" -O "https://raw.githubusercontent.com/pentamassiv/Concept2LinuxUpdater/main/current_versions.txt"
FILES=$(awk -F '\t' '{print $5}' "${temp_dir}"/current_versions.txt)

# Display current versions to the user and have them chose the firmware they need
echo "The most recent versions are:"
echo -e "line_no\tstatus\tmachine\trelease_date\tshort_description\tfilename"
cat -n "${temp_dir}"/current_versions.txt
echo "Enter the line number of the firmware you want to download: "
read line_no
FIRMWARE=$(echo "$FILES" | sed "${line_no}q;d")
rm -r "${temp_dir}"

# Save the firmware at the default location if it wasn't specified via a parameter
if [ $# -eq 0 ]; then
    echo "Downloading firmware to the default destination"
else
    DESTINATION=$1/Concept2/Firmware
fi

# Download the firmware file
mkdir -p "${DESTINATION}"
echo "Downloading https://firmware.concept2.com/files/${FIRMWARE}"
curl --output-dir "${DESTINATION}" -O "https://firmware.concept2.com/files/${FIRMWARE}"
echo "Done downloading firmware to ${DESTINATION}"

echo "Extract the 7z file and copy the Concept2 folder to your USB stick"
