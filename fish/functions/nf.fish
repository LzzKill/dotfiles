function nf
  set path (du -a (pwd) | awk '{print $2}' | fzf)
  if test $path
    nvim $path
  else
    echo "No file"
  end
end

