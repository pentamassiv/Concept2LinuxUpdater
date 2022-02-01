# Concept2LinuxUpdater
Concept2 requires the installation of their updater utility if you want the newest firmware. The program is only available for Windows or Mac. This script allows you to fetch the firmware from their website and update your machine via an USB stick. When you use the Windows Updater Utility to create an USB stick to update your Concept2 machine, all it does is it creates the folders Concept2/Firmware on it, downloads the zip-files with the new firmware and copies it to the new folder. This script does the same but you need to copy the folder with the firmware to your USB stick.

## Disclaimer
I used this to update my machine and it worked without any problems. Use this tool at your own risk. If your device becomes a brick, please don't complain.

## Requirements
You need to have curl and 7z installed to run the script.

## Compatibility
Judging from the firmware files, this should work for the following Concept2 computer models:
pm3 pm3a pm3aski pm4 pm4a pm4aski pm5 pm5ski pm5v2 pm5v2bk pm5v2ski 

## Usage
- Clone and open this repository
```
git clone https://github.com/pentamassiv/Concept2LinuxUpdater.git
cd ./Concept2LinuxUpdater
```
- Make the script executable
```
chmod +x ./updater.sh
```
- Run the script
```
./updater.sh
```
- The script created a new folder in your ~/Downloads folder with the firmware. Copy the folder 'Concept2' to the USB stick you want to use to update your Concept2 device
- Unplug the USB stick
- Plug it into your Concept2 machine and follow the instructions
- Let me know if it worked or if you had any issues


## TODO
When I updated my machine with the Windows updater, there were the firmware files and two additional files called hex.out and strings.out. I don't know what they are for or when they get created but they appear to be optional/obsolete since I successfully updated my device without them. It would be interesting to know what they are for or how to get them though. Please get in touch if you have a clue :-)