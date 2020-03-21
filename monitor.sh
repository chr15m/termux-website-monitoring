#!/bin/sh

SITE=https://mccormick.cx/

# termux-wake-lock

HOME=/data/data/com.termux/files/home

while [ 1 ]
do
  ( curl -sI "$SITE" | grep -qc '200 OK' ) ||\
    ( termux-notification --content "Failed to load $SITE" --title "Site down" --action "am start -a android.intent.action.VIEW -d $SITE" )
  sleep 360
done


