function update_fresh --wraps='sudo -i dnf update -y && flatpak update -y && systemctl reboot' --description 'fresh update with restart'
  sudo -i dnf update -y && flatpak update -y && systemctl reboot
end
