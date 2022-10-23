function dfzf
du -a ~/ | awk '{print $2}' | fzf
end

