# load default cachy config
source /usr/share/cachyos-fish-config/cachyos-config.fish

# setup starship prompt
source ~/.config/fish/starship_config.fish

# setup dev environment
source ~/.config/fish/devshell_config.fish

# setup nvm node version manager
#bash /usr/share/nvm/init-nvm.sh

# setup zoxide
zoxide init fish --cmd cd | source

thefuck --alias | source

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
end
