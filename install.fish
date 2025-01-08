#! /usr/bin/fish

set Pl (cat ./packages.txt)
echo $Pl
paru -Syu $Pl
set pwd (pwd)

echo $dt
