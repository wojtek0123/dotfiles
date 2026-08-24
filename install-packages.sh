#!/bin/bash

sudo dnf update -y
sudo dnf install git -y
sudo dnf install stow -y
sudo dnf install zoxide -y
sudo dnf install node -y
sudo dnf install go -y
sudo dnf install neovim -y
sudo dnf install fd-fide -y
sudo dnf install rip-grep -y

flatpak remote-add --if-not-exists flathub https://flathub.org
flatpak install flathub app.zen_browser.zen


sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf update --refresh
sudo dnf install steam gamemode mangohud gamescope -y
sudo dnf install mesa-dri-drivers mesa-vulkan-drivers -y
sudo dnf install grimshot -y
sudo dnf install chromium -y
sudo dnf install kitty -y
sudo dnf install wl-clipboard -y

sudo dnf copr enable swayfx/swayfx -y
sudo dnf install swayfx --allowerasing -y

flatpak install flathub com.bitwarden.desktop
flatpak install flathub com.spotify.Client

sudo dnf copr enable che/nerd-fonts -y
sudo dnf install nerd-fonts-jetbrains-mono -y

sudo dnf install postgresql-server postgresql-contrib -y
sudo postgresql-setup --initdb --unit postgresql
sudo systemctl enable --now postgresql

sudo dnf install calc -y
