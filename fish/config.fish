if status is-interactive
    # Commands to run in interactive sessions can go here

    abbr ls eza;
    abbr ll "eza -l"
    abbr lg lazygit;
    abbr paccc "sudo pacman -Syu"
    abbr lvim "~/.local/bin/lvim"
    zoxide init fish | source
    # abbr
end

