#!/bin/sh

export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus 

acpi -b | awk -F'[,:%]' '{print $2, $3}' | {
	read -r status capacity

	if [ "$status" = Discharging -a "$capacity" -lt 10 ]; then
		notify-send "Batterie faible $capacity%" -t 5000
	fi
}

