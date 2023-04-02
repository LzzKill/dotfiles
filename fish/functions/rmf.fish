function rmf
  set path (du -a (pwd) | awk '{print $2}' | fzf)

  if test $path # has file

    if test $argv[1]
      if test $argv[1] = "-n"
        rm -f $path
        echo "remove $path"
        return 0
      end
    end

    read -n1 -P"Are you want to remove $path ?(y/N)" -a FE
    if test $FE = "y"
      rm -f $path
      echo "Removed $path"
    else
      echo "No remove file $pach"
    end
  else
    echo "No file"
  end
end
