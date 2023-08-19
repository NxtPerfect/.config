function update --wraps='sudo dnf update -y && sudo flatpak update -y' --wraps='sudo dnf update -y && flatpak update -y' --description 'alias update=sudo dnf update -y && flatpak update -y'
  sudo dnf update -y && flatpak update -y $argv
        
end
