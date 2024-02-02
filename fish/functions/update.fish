function update --wraps='sudo -i dnf update -y && sudo flatpak update -y' --description 'updates both dnf and flatpak package manager'
  sudo -i dnf update -y && flatpak update -y $argv
        
end
