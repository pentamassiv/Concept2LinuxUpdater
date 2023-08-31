# Unofficial Concept2LinuxUpdater
Concept2 requires the installation of their updater utility if you want the newest firmware. The program is only available for Windows or Mac. This script allows you to fetch the firmware from their website and update your machine via an USB stick. When you use the Windows Updater Utility to create an USB stick to update your Concept2 machine, all it does is it creates the folders Concept2/Firmware on it, downloads the zip-files with the new firmware and copies it to the new folder. This script does the same but you need to copy the folder with the firmware to your USB stick.

## Disclaimer
I used this to update my machine and it worked without any problems. Use this tool at your own risk. If your device becomes a brick, please don't complain. This is an UNOFFICIAL updater.

## Compatibility and versions
This repo automatically checks for new firmware versions. Have a look at the [current_versions](current_versions.txt) to check if your machine is supported. It very likely is.

## Requirements
You need to have curl installed to run the script.

## Check for updates
This script does not run automatically ever so often to check for updates. You need to manually run it.

### Clone this repository
Get the updater script
```
git clone https://github.com/pentamassiv/Concept2LinuxUpdater.git
cd ./Concept2LinuxUpdater
```
Make it executable
```
chmod +x ./updater.sh
```

### Download the newest firmware
Run the script without a parameter to download the firmware to the default location $HOME/Downloads/
```
./updater.sh
```
You can optionally specify the location at which to save the firmware e.g
```
./updater.sh $HOME/Downloads/
```
You will be showed all current versions. Chose which one to download by entering the line number

### Copy the firmware
- The script created a new folder in your ~/Downloads folder or the location you specified with the firmware. Open the folder and unzip the file for the device you need (eg. `7z e "pm5_eurochinesebin_pub_secure_R032B000.7z"`).
- Copy the folder 'Concept2' to the USB stick you want to use to update your Concept2 device
- Unplug the USB stick
- Plug it into your Concept2 machine and follow the instructions
- Let me know if it worked or if you had any issues


## TODO
When I updated my machine with the Windows updater, there were the firmware files and two additional files called hex.out and strings.out. I don't know what they are for or when they get created but they appear to be optional/obsolete since I successfully updated my device without them. It would be interesting to know what they are for or how to get them though. Please get in touch if you have a clue :-)
