#!/usr/bin/fish

function dann1-deb-ppa -d "update your custom local repository and get its package index"
  cd $custom_repo_dir
  rm $ppa_dir/Packages*
  dpkg-scanpackages pool/main/ /dev/null | gzip -9c > $ppa_dir/Packages.gz
  gunzip --keep $ppa_dir/Packages.gz
  xz --keep $ppa_dir/Packages
  cd -
  repo-update
end