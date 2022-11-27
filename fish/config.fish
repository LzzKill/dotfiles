if status is-interactive
    # Commands to run in interactive sessions can go here

    alias ls="ls -a";
    alias lg lazygit;
    alias paccc "sudo pacman -Syu"
    # abbr
end

thefuck --alias | source
