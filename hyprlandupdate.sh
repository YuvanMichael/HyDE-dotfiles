#!/usr/bin/env bash
yay -S --needed gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols-git cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland-git libinput libliftoff libdisplay-info cpio tomlplusplus hyprlang-git hyprcursor-git hyprwayland-scanner-git xcb-util-errors hyprutils-git
git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
make all && sudo make install
