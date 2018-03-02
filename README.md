# fish-tools

A set of fish shell additions to enhance the user experience. Some of my settings are already set up in the config files, namely, **config.fish, proxy-config.fish, debian-tools-config.fish** and **archlinux-tools.fish**. See the functions description to know their respective utility.

## Required software
You will need [my shell tweaks](github.com/dann1/shell-tweak) to fully use these tools.

### Archlinux

```bash
sudo pacman -S fish rsync wget aria2 youtube-dl x11vnc
```

### Debian

```bash
sudo apt install debmirror dpkg-dev xz-utils gunzip fish rsync wget aria2 youtube-dl x11vnc
```

## Installation

Replace your **~/.config/fish/config.fish** by the one provided

## Proxy config

Create a file named proxy-config.fish in the with the following content

```fish
#!/usr/bin/fish

# users and passwords
set user1 "user1:password1"
set user2 "user2:password2"

# proxy list, prepend the desired user to authenticate in a proxy
set proxy1              "$user1@proxy1.domain.com:port"
set proxy2              "$user2@proxy2.domain.com:port"

```

**Beware** credentials will be in plain text.