#!/usr/bin/env bash
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
sleep 3
figlet "Starting required processes"
gum spin --spinner dot --title "Starting nescessary processes..." -- sleep 20
figlet "Loading required Hyprland Plugins"
hyprpm update && hyprpm reload
sleep 3
figlet "UPDATES"
echo "Get ready to update,"

sleep 3

sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist && sudo pacman -Syu && yay -Syu && yay -Syu --devel

echo -e "${GREEN}"
figlet "Reboot"
echo -e "${NONE}"
echo "A reboot of your system is recommended. If any big updates were performed."
echo
if gum confirm "Do you want to reboot your system now?" ;then
    gum spin --spinner dot --title "Rebooting now..." -- sleep 3
    systemctl reboot
elif [ $? -eq 130 ]; then
    exit 130
else
    echo ":: Reboot skipped"
fi
echo ""

echo "Script finished successfully. :D"

sleep 3
