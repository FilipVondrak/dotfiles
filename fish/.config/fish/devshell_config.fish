# Setup direnv
direnv hook fish | source

# Setup NIX
## add nix package manager to PATH
fish_add_path ~/.nix-profile/bin
fish_add_path ~/.local/share/JetBrains/Toolbox/scripts
fish_add_path ~/.dotnet/tools
## add nix profiles to fish
if test -e /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
    source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
end

# Setup IDEs
## Inject commands from Jetbrains IDEs
if set -q JETBRAINS_INTELLIJ_COMMAND_END_MARKER
end
## Run Rider in the background and discard logs
function rider
    command rider $argv >/dev/null 2>&1 &
end
## Run Webstorm in the background and discard logs
function webstorm
    command webstorm $argv >/dev/null 2>&1 &
end
