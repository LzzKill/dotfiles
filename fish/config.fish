if status is-interactive
    # Commands to run in interactive sessions can go here

    alias ls="ls -a";
    alias bt transmission-cli;
    alias lg lazygit;
    alias neofetch "neofetch | lolcat";
    alias paccc "sudo pacman -Syu"
    # abbr
end

thefuck --alias | source
