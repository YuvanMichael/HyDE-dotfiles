sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist && sudo pacman -Syu && yay -Syu && yay -Syu --devel
