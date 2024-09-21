#!/usr/bin/env bash
sleep 10
cp -f ~/Documents/waybar/config.jsonc ~/.config/waybar/
echo "" >> ~/.config/waybar/style.css
echo "" >> ~/.config/waybar/style.css
echo "#custom-system," >> ~/.config/waybar/style.css
echo "#custom-music," >> ~/.config/waybar/style.css
echo "#custom-musicicon," >> ~/.config/waybar/style.css
echo "#custom-updates," >> ~/.config/waybar/style.css
echo "#disk {" >> ~/.config/waybar/style.css
echo "        color: @main-fg;" >> ~/.config/waybar/style.css
echo "        background: @main-bg;" >> ~/.config/waybar/style.css
echo "        opacity: 1;" >> ~/.config/waybar/style.css
echo "        margin: 4px 0px 4px 0px;" >> ~/.config/waybar/style.css
echo "        padding-left: 4px;" >> ~/.config/waybar/style.css
echo "        padding-right: 4px;" >> ~/.config/waybar/style.css
echo "}" >> ~/.config/waybar/style.css
echo "" >> ~/.config/waybar/style.css
killall waybar
waybar
