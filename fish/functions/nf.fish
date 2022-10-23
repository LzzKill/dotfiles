function nf
nvim (du -a ~/ | awk '{print $2}' | fzf)
end

