#!/bin/bash
case $(wofi -d -L 6 -l 3 -W 100 -x -100 -y 10 \
    -D insensitive=true \
    -D gtk_dark=true \
    -D dynamic_lines=true << EOF | sed 's/^ *//'
    Shutdown
    Reboot
    Log off
    Sleep
    Hibernate
    Lock
    Cancel
EOF
) in
    "Shutdown")
        systemctl poweroff
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Sleep")
	swaylock
        systemctl suspend
        ;;
    "Lock")
        swaylock
        ;;
    "Log off")
        hyprctl dispatch exit
        ;;
    "Hibernate")
	swaylock
	systemctl hibernate
	;;
esac
