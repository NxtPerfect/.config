if status is-interactive
    # Commands to run in interactive sessions can go here
	starship init fish | source
end

alias update="sudo dnf update -y && sudo flatpak update -y"
alias flex="clear && neofetch --ascii_distro redstar"
# alias update-grub="sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB && sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias rm="trash"
alias v="nvim"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
set -gx EDITOR nvim
