#!/bin/bash
# Dotfiles install script
# Run on a fresh Arch install after cloning this repo to ~/dotfiles

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "==> Installing packages..."
sudo pacman -S --needed - < "$DOTFILES_DIR/pkglist.txt"

echo "==> Installing AUR packages (requires yay)..."
yay -S --needed - < "$DOTFILES_DIR/aurpkglist.txt"

echo "==> Stowing dotfiles..."
cd "$DOTFILES_DIR"

for pkg in hypr waybar kitty rofi wofi wlogout fastfetch btop cava wal astronvim; do
  rm -rf ~/.config/$pkg
  stow "$pkg"
  echo "  $pkg: done"
done

rm -f ~/.bashrc ~/.bash_profile
stow shell
echo "  shell: done"

rm -f ~/.gitconfig
stow git
echo "  git: done"

rm -f ~/.Xresources
stow xorg
echo "  xorg: done"

echo "==> Enabling services..."
sudo systemctl enable --now NetworkManager
sudo systemctl enable --now bluetooth
sudo systemctl enable --now tlp
sudo systemctl enable ly

echo "==> Done. Reboot to apply everything."
