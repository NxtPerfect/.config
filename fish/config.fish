if status is-interactive
    # Commands to run in interactive sessions can go here
#	starship init fish | source
end

alias update-all="sudo pacman -Syuw --noconfirm && yay -Syuw --noconfirm && sudo flatpak update --no-deploy -y"
alias install-all="sudo pacman -Syu && yay -Syu && sudo pacman -Scc && sudo flatpak upgrade"
alias flex="clear && neofetch --ascii_distro redstar"
alias update-grub="sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB && sudo grub-mkconfig -o /boot/grub/grub.cfg"
#alias clean="sudo pacman -Rncs $(pacman -Qdtq) && yay -Rncs $(yay -Qdtq)"
alias key="sudo pacman-key --populate"
alias rm="trash"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
