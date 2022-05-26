#!/bin/bash

if [[ $(xset q | grep "DPMS is " | awk '{ print $3 }') = "Enabled" ]]; 
	then
		xset s off -dpms
	else
		xset s on +dpms
	fi
