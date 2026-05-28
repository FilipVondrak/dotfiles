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

# add snap packages to PATH
fish_add_path /var/lib/snapd/snap/bin
fish_add_path ~/.local/bin

if set -q JETBRAINS_INTELLIJ_COMMAND_END_MARKER
    # Inject commands from Jetbrains IDEs
end

# add nix profiles to fish
if test -e /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
    source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
end

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
end
