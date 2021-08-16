# half-handshake
Automates generating hostapd config files for running half-handshake attacks on WiFi

##Requires:
- Hostapd installed
- Aircrack suite installed
- Relevant wifi cards that can be put into monitor mode
- Relevant firmware for wifi cards

##Accepts arguments:
1. Access point name to spin up
2. Desired channel to run AP on and sniff
3. Interface to run airodump to collect traffic
4. Interface to run the AP
5. Output file for airodump to output to

##Todo:
- Make arguments attractive in the script, POSIX etc.
- Accept spaces in Access point name (maybe via reordering arguments)
