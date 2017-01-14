#!/bin/bash

BACKL=/sys/class/backlight/radeon_bl0/brightness
if [$(cat $BACKL) -eq 255]
then
	RES=$(cat $BACKL);
else
	RES=$(($(cat $BACKL)+5));
fi
tee /sys/class/backlight/radeon_bl0/brightness <<< $RES

