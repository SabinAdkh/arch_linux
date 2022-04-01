# Arch_linux_common_problems_solutions
## Solutions to arch linux problems

## To install AUR packages
```bash
sudo pacman -S base-devel
```
> Clone the package fiel into your directory
> Run this command
```bash
cd <directyory of the clonned file>
makepkg -si 
```


## To enable shell option in gnome-tweaks appearance , enable user_themes in extensions
> To make gnome shell extension work in browser you need to instasll chrome-gnome-shell
> Visit this website to install the package: 
```bash
https://wiki.gnome.org/Projects/GnomeShellIntegrationForChrome/Installation
```
> For arch linus follow below steps to install chrome-gnome-shell
```bash
git clone https://aur.archlinux.org/chrome-gnome-shell.git
cd chorme-gnome-shell
makepkg -si
```


## To change the terminal shell
> First get the path of the shell
```bash
which zsh 
which bash
```
> Change the shell using the following command
```bash
chch -s /usr/bin/zsh # full path of the shell
chch -s ($which zsh) /etc/shells
```

## To enable syncing in chromium browser
> Create a file name ~/.config/chromium-flags.conf
> Put the below text in the file
```bash
--oauth2-client-id=77185425430.apps.googleusercontent.com
--oauth2-client-secret=OTJgUOQcT7lO7GsGZq2G4IlT
```

## Enable Firewall
```bash
sudo pacman -S ufw
sudo enable ufw
```

> check the status of the firewall
```bash
sudo ufw status verbose
```

## Remove orphans processes files which are not necessary
```bash
sudo pacman -Rns $(pacman -Qtdq)
```

## To enable bluetooth and make it work after pairing
> Install the following packages
```bash
sudo pacman -S bluez bluez-utils blueman
sudo su # enable superuser
sudo systemctl start bluetooth # Check if bluetooth working or not
sudo systemctl enable bluetooth # Start bluetooth when system starts
```

> To connect to audio devices i.e. bluetooth headphones install below packages
```bash
sudo pacman -S pulseaudio pulseaudio-bluetooth
pulseaudio --start
```

> Graphical interface for pulsuaudio
```bash
sudo pacman -S pavucontrol
```

## To enable shell option in gnome-tweaks appearance , enable user_themes in extensions
> To make gnome shell extension work in browser you need to instasll chrome-gnome-shell
> visit this website to install the package: 
```bash
https://wiki.gnome.org/Projects/GnomeShellIntegrationForChrome/Installation
```
> For arch linus follow below steps to install chrome-gnome-shell
```bash
git clone https://aur.archlinux.org/chrome-gnome-shell.git
cd chorme-gnome-shell
makepkg -si
```


## To enable gnome 40 gestures 
> Install x11-gestures from gnome shell extensions web page
> Install touchegg to enable the gestures
> For Arch Linux folow the following steps
```bash
git clone https://aur.archlinux.org/touchegg.git
cd touchegg
makepkg -si
sudo systemctl enable touchegg.service
sudo systemctl start touchegg
```

## To change the swappiness
> First check the swappiness value
```bash
cat /proc/sys/vm/swappiness
cat /sys/fs/cgroup/memory/memory.swappiness
or
sysctl vm.swappiness
```
> Change the swappiness value temporarily
```bash
sudo sysctl vm.swappiness=your_value
```
> To set the swappiness value permanently, create a sysctl.d configuration file. For example:
```bash
sudo nano /etc/sysctl.d/99-swappiness.conf
vm.swappiness=your_value # The value should be greater than 10
```


## To install Gnome
```bash
sudo pacman -Syu
sudo pacman -S gnome
```

## Open /etc/gdm/custom.conf and uncomment the line:
```bash
WaylandEnable=false
```
> Add the following line to the [daemon] section:
```bash
DefaultSession=gnome-xorg.desktop
```
> Save the custom.conf file.
> Logout or reboot to enter the new session
 

## After booting if command line opens of instead of desktop then run the following command
```bash
sudo systemctl start gdm.service
```
> The system will automatically opens up the desktop environment after that open the terminal and run the following command
```bash
sudo systemctl enable gdm.service
```

## To remove highlighting of folders and files
> Add the following line to the .bashrc or .zshrc file 
```bash
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
```
> Save the file and Source it
```bash
source ~/.bashrc
source ~/.zshrc
```
## Enable Brightness in i3wm
> check this link
```bash 
https://github.com/particleofmass/i3wm_screen_brightness
```

## To Enable Screen Sharing using Xorg in Arch and Manjaro
> check the following link
```bash
https://docs.fedoraproject.org/en-US/quick-docs/configuring-xorg-as-default-gnome-session/
```
