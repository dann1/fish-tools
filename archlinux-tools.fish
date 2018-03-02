#!/usr/bin/fish

function dann1-arch-aur -d "update custom local repository"
  repo-add -n -q -R  $aur_index $aur_dir/*.pkg.tar.xz
  pacremove
  sudo pacman -Sc --noconfirm
  sudo pacman-optimize 
  Syu
end

function dann1-repo-remove -a pack -d "Removes a package from a repository index"
  repo-remove $aur_index $pack
  rm $aur_dir/$pack*.pkg.tar.xz
end

function dann1-arch-update -d "update your local mirror and perform a system upgrade"
  for i in $arch_repos
    rsync -aHAXP --partial --delete --inplace $arch_src/$i/ $arch_dst/$i/
  end
  
  pacremove
  Syu
end
