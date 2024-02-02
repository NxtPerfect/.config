function update_night --wraps='sudo -i dnf update -y && flatpak update -y && systemctl poweroff' --description 'updates both dnf and flatpak package manager, then powers off pc'
  sudo -i dnf update -y && flatpak update -y && systemctl poweroff
end
