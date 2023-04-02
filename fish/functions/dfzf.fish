function dfzf
  du -a (pwd) | awk '{print $2}' | fzf
end

