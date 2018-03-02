#!/usr/bin/fish

# fish oriented config
set -g fish_color_cwd 87af5f
set -g fish_color_cwd_root 5f0000
set -g fish_color_error 870000 --bold
set -g fish_color_escape af5f5f
set -g fish_color_history_current 87afd7
set -g fish_color_host 5f87af
set -g fish_color_match d7d7d7 --background=303030
set -g fish_color_normal normal
set -g fish_color_operator d7d7d7
set -g fish_color_param 5f87af
set -g fish_color_quote d7af5f
set -g fish_color_redirection normal
set -g fish_color_search_match --background=purple
set -g fish_color_status 5f0000
set -g fish_color_user 5f875f
set -g fish_color_valid_path --underline
set -g fish_color_dimmed 555
set -g fish_color_separator 999
set -g fish_pager_color_completion normal
set -g fish_pager_color_description 555 yellow
set -g fish_pager_color_prefix cyan
set -g fish_pager_color_progress cyan

# import shell modification files, this works with github.com/dann1/shell-tweak
source ~/.aliases
source ~/.exports

# color man pages
export LESS_TERMCAP_me=(printf '\e[0m')
export LESS_TERMCAP_se=(printf '\e[0m')
export LESS_TERMCAP_ue=(printf '\e[0m')
export LESS_TERMCAP_mb=(printf '\e[1;32m')
export LESS_TERMCAP_md=(printf '\e[1;34m')
export LESS_TERMCAP_us=(printf '\e[1;32m')
export LESS_TERMCAP_so=(printf '\e[1;44;1m')

# tools-related-variables
set tools_dir 			"$HOME/Projects/fish-tools"
set repo_dir 			"$HOME/Repos"
set web_dir 			"$HOME/Documents/Websites"
set down_dir			"$HOME/Downloads"

set mirror 				"10.8.11.4"
set torrent_tracker 	"http://torrent.cujae.edu.cu/announce.php"
set aria2_disk_cache	"1024M"

set salva_dst			"$HOME/USB/CLAVIJO/"
set salva_exc			{"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","$HOME/.cache/","$HOME/.local/share/Trash/","$HOME/.config/kdeconnect/","$HOME/shares/dump/"}

# load config files
for i in    proxy-config.fish os-tools.fish \
			debian-tools-config.fish debian-tools.fish \
			archlinux-tools-config.fish archlinux-tools.fish; 
	source $tools_dir/$i; 
end