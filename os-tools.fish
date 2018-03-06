#!/usr/bin/fish

function dann1-exprox -d "enable proxy access in current terminal" -a proxy
  export http_proxy="http://$proxy"
  export https_proxy=$http_proxy
end

function dann1-unprox -d "disable proxy acces in a terminal"
  set -e https_proxy
  set -e http_proxy
end

function dann1-webget -a url -d "download a web site for offline use"
  wget -P $web_dir -U chrome -e robots=off --continue --mirror --adjust-extension -r --no-parent --page-requisites --convert-links --no-clobber  --domains=$url $url
end

function dann1-download -a url -d "download a file with enhanced aria2"
  aria2c -c --dir=$down_dir --max-connection-per-server=16  --file-allocation=falloc --optimize-concurrent-downloads=true --disk-cache=$aria2_disk_cache --async-dns=false "$url" 
end

function dann1-backup -d "excluding $salva_exc perform a system backup in $salva_dst"
  sudo rsync -aHAXP --delete-during --delete-excluded --exclude=$salva_exc / $salva_dst
end

function dann1-vnc -d "starts tigervnc server"
  x11vnc -nap -noxdamage -display :0 -forever -bg 
  # x0vncserver -display :0 -SecurityTypes None  &
end

function cl -a dir -d "cd + ls -lh"
  cd $dir
  ll
end


function dann1-plasma-mime -d "removes mimes"
  sudo rm /usr/share/mime/packages/kde.xml 
  sudo update-mime-database /usr/share/mime
end

function dann1-eject -a disk "eject disk powering off"
  sudo eject $disk
  udisksctl power-off -b $disk
end


function dann1-text-rep -a old -a new -d "replace text"
  egrep -lRZ $old . | xargs -0 -l sed -i -e 's/$old/$new/g'
end