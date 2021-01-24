hdmi_active="$(cat /sys/class/drm/card0/*HDMI*/status | grep '^connected')"

if [ $hdmi_active ]
then
	startx -- -layout hdmi
else
	startx
fi
