# Getting the token
In order to use the API to get the newest firmware, you need a token. This can be acquired by running something like mitmproxy. The following is a tutorial on how to do that with Arch Linux when you run the original Concept2 Update Utility Windows 10 in a VW. If you just want to update your firmware, you don't have to do all this. I stored the token in Github Secrets so Github Actions can use it but the token remains "secret". Github Actions will regularly check if there is new firmware available and commit the new links to this repo.

- Install mitmproxy on the host
```
sudo pacman -S mitmproxy
```
- To set up the proxy on Windows, open the internet settings and set the proxy to 10.0.2.2:8080.
- To trust mitmproxy's certificate, open mitm.it and download the certificate for Windows. Look up how to trust the certificate and follow the guide
- Run mitmproxy on the host
```
mitmweb
```
- Open the Updater Utility on Windows
- Look at the call to get the latest firmware
- Copy the token