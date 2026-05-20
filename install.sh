#!/bin/bash
set -euo pipefail

PACKAGES=(
    alsa-utils amd-ucode bat bluez bluez-utils btop clang
    dunst fd feh firefox fzf ghostty git grim
    hyprlock hyprpaper hyprpicker imagemagick lazygit
    lib32-nvidia-utils libnotify man-db networkmanager
    noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra
    nvidia nvidia-utils obsidian openssh p7zip pacman-contrib
    pipewire pipewire-alsa pipewire-jack pipewire-pulse
    reflector ripgrep slurp sof-firmware starship stow
    telegram-desktop tmux ttf-jetbrains-mono-nerd
    unrar unzip vlc vlc-plugin-ffmpeg waybar wireplumber
    wl-clipboard woff2-font-awesome wofi
    xdg-desktop-portal-hyprland xdg-user-dirs
    yazi zip zoxide zsh hyprsunset
)

echo "Updating system..."
sudo pacman -Syu --noconfirm

echo "Checking for missing packages..."
MISSING=()
for pkg in "${PACKAGES[@]}"; do
    pacman -Qi "$pkg" &>/dev/null || MISSING+=("$pkg")
done

if [[ ${#MISSING[@]} -eq 0 ]]; then
    echo "All packages already installed."
else
    echo "Installing ${#MISSING[@]} missing packages: ${MISSING[*]}"
    sudo pacman -S --needed --noconfirm "${MISSING[@]}"
fi

echo "All done!"
