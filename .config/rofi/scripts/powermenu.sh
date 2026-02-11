#!/bin/bash

options="Shutdown\nReboot\nLogout\nSuspend\nLock"

chosen=$(echo -e "$options" | rofi -dmenu -p "Power Menu:")

case $chosen in
    Shutdown)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
    Logout)
        i3-msg exit
        ;;
    Suspend)
        systemctl suspend
        ;;
    Lock)
        # If you have a lock screen (like i3lock)
        i3lock
        ;;
esac
