#!/bin/bash

BACKL=/sys/class/backlight/radeon_bl0/brightness
if [$(cat $BACKL) -lt 50]
then
	RES=$(($(cat $BACKL)-3))
else
	RES=$(($(cat $BACKL)-5))
fi
tee /sys/class/backlight/radeon_bl0/brightness <<< $RES

