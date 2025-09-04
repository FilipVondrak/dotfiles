source /usr/share/cachyos-fish-config/cachyos-config.fish

# setup starship prompt
source ~/.config/fish/starship_config.fish

# setup nvm node version manager
#bash /usr/share/nvm/init-nvm.sh

# setup zoxide
zoxide init fish --cmd cd | source

# add nix package manager to PATH
fish_add_path ~/.nix-profile/bin
fish_add_path ~/.local/share/JetBrains/Toolbox/scripts
fish_add_path ~/.dotnet/tools

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
end
