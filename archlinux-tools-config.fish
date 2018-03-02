#!/usr/bin/fish

set arch_src		"rsync://$mirror/repos/archlinux" # remote archlinux mirror
set arch_dst		$repo_dir'/archlinux' # local archlinux mirror dir
set arch_repos		'core' 'extra' 'community' 'multilib' # archlinux used repositories
set aur_dir 		$repo_dir/"aur" # local aur directory
set aur_index 		$aur_dir/"dann1-aur.db.tar.gz" # local aur index