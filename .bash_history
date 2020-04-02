sh -x dopipe "ls -al /bin" "grep '*sh'"
dopipe ls "ls -al"
bash -x dopipe ls "ls -al"
cd
ls *sh
dopipe "ls /bin" "grep .\*sh"
dopipe "ls /bin" "grep .\*sh$"
cd bin
dopipe "ls /bin" "grep .\*sh$"
dopipe "ls /bin" "grep sh$"
ll
trash gnome-fractional-scaling 
ll
interrupts
cat lsm
type mounts
mv lsm mounts
type wifi
lswifi
ll
netstat
mv netstat lsnet
ll
cat mirrors 
trash mirrors 
acpi -b
trash monitor-battery 
ll
orphans
cat orphans
trash orphans
cat snapshot 
trash snapshot 
ll
targets
cat targets
vim ~/.bash_aliases 
a
targets
systemctl list-targets
ll
trash targets 
cat whichpkg 
whichpkg ls
yay -Syyu
ll
alias
l
ls
cd
vim .bash_aliases
a
s
i
i|less
mounts
mount
mount|sed '^\([^ ]*\) on \([^ ]*\) \(.*\)$/\2 \1 \3/'
mount|sed 's/^\([^ ]*\) on \([^ ]*\) \(.*\)$/\2 \1 \3/'
mount|sed 's/^\([^ ]*\) on \([^ ]*\) \(.*\)$/\2 \1 \3/'|LC_ALL=C sort
mount|sed 's/^\([^ ]*\) on \([^ ]*\) \(.*\)$/\2 \1 \3/'|LC_ALL=C sort|grep '^[^ ]* '
mount|sed 's/^\([^ ]*\) on \([^ ]*\) \(.*\)$/\2 \1 \3/'|LC_ALL=C sort|grep '^[^ ]* 'cd bin
cd bin
ll
vim mounts
mounts
vim mounts
mounts
mounts | egrep -v ' type (btrfs|cgroup) '
su
mounts
btrfs sub list /
sudo btrfs sub list /
sudo btrfs sub list /|grep -v snapshot
locate .snapshots
ll /b
su
bye
c
cd src
ll
git clone git@github.com:z3nbum/bin-scripts.git
cd bin-scripts/
ll
chmod +x *
chmod -x README.md 
ll
git commit
git config --global user.name "Gregory Hinton"
git config --global user.email ""
git commit
ls *
git add *
git commit
ll
git push origin master
cd ..
ll
ll bin-scripts/
trash scripts
ll
trash-list
snapper list
set -o vim
set -o vi
h
bye
ps -efH
ttys
cd src/bashrc
ll
for f in .ba* .pr*; do diff $f ~/$f; done
diff . ~
diff . ~|grep -v '^Only in '
cp ~/.bash_aliases
cp ~/.bash_aliases ./
git commit
git commit
git push origin master
cd ..
ls
cd ~/bin
file *
cat bye
vim bye lsnet mounts temp
file *
cat extract 
vim extract 
file *
vim extract 
file *
man git
man git-init
cd src
cd ~/src
ll
mkdir scripts
cd scripts
git init
cp --reflink ~/bin/* ./
ll
git add *
ll
ls ..
trash ../{lswifi,ttys}
man git
man git
man git-config
git --help
man git-remote
vim .bash_aliases
. .bash_aliases
alias
vim .bashrc
. .bashrc
ll .config
less .bashrc
cd .config
mv dircolors dir_colors
cd
vim .bashrc
. .bashrc
targets
ttys
isolate m
ps -efH
yay -Syyu
reboot
c
failed
errors
exited
systemctl list-timers
cd /usr/share/themes
ll
cd Matcha-aliz/gtk-3.0
ll
diff gtk.css.TEST gtk.css
diff gtk.css.TEST gtk.css|less
diff gtk.css.TEST gtk.css|less
ll
sudo rm gtk.css.*
ll
cd
ll
cd saved
ll
trash gtk.css.*
less btrfs-sub-list.txt 
sudo btrfs sub list /|less
sudo btrfs sub list /|grep -v '/snapshot$'
sudo btrfs sub list / >btrfs-sub-list.txt
pacman -Qe >pacman-Qe.txt
pacman -Q >pacman-Q.txt
disabled >systemctl-disabled.txt
enabled >systemctl-enabled.txt
masked >systemctl-masked.txt
running >systemctl-running.txt
less systemctl-running.txt
cd
systemd-analyze plot >boot.svg
open boot.svg
enabled
systemctl|grep brl
locate brl
whatis brltty
pacman -Q|grep brl
sudo pacman -Rns brltty
sudo pacman -R brltty
pacman -Rh
sudo pacman -Rnsd brltty
pacman -Q brltty
sudo pacman -Rnsdd brltty
pacman -Q|grep ppp
pacman -Qi ppp
pacman -Rns ppp
sudo pacman -Rns ppp
sudo pacman -Rns ppp networkmanager-pptp pptpclient
locate ModemManager
cd /etc/pacman.d/
ll
cat mirrorlist 
cd ~/src
git clone git@github.com:LukeSmithxyz/wallpapers.git
git clone https://github.com/LukeSmithxyz/wallpapers.git
git clone git@github.com:LukeSmithxyz/wallpapers.git
git clone https://github.com/LukeSmithxyz/wallpapers.git
failed
cat .bash_aliases
ln .bash_aliases a
cat a
cd .ssh
ll
cat *.pub
bye
exit
ps -efH
ps -efH
isolate g
isolate m
ps -efH
echo '\a'
echo --help
man echo
echo --hep
echo --help
echo -- --help
type echo
which echo
/usr/bin/echo
/usr/bin/echo --help
echo -e '\a'
echo -e \a
sh --
type sh
man sh
yay -Syyu
reboot
c
pacman -Ss linux56
cd Downloads/
ll
ll ~/Documents/
mv progit.pdf ~/Downloads/
mv progit.pdf ~/Documents/
ll
less README.md 
open README.md 
locate gnome-shell
locate bin/gnome-shell
pacman -Qo /usr/bin/gnome-shell
whichpkg /usr/bin/gnome-shell
pacman -Ql gnome-shell|less
apropos gnome-shell
man gnome-shell
gnome-shell --list-modes
ll /var/cache/pacman/pkg/gnome-shell*
man pacman
pacman -Qi gnome-shell
snapper list
cd /b
ll
cd @
cd .snapshots/
ll
cd 261
ll
su
cd
pacman -Q gnome-shell
pacman -Q gnome-shell >pacman-Q-gnome-shell.txt
reboot
c
alias
cd bin
cat corner
corner
cd bin
ll
alias
t
pacman -Qi gnome-shell
cd /usr/bin
ll gnome-shell
ll
ll|less
ll|less --color=auto
ll gnome-shell
lsattr
lsattr gnome-shell
ll gnome*
file gnome-shell
file gnome-logs
sudo cp gnome-shell ~/gnome-shell-3.36.0
cd
ll
resize
su
c
speedtest
journalctl --help|less
journalctl -b0
su
date
date
journalctl -b0
cd /usr/bin
ll gnome-shell*
cd /etc
ll os*
cat os-release 
ls *release*
cat *-release
pacman -Q|grep xorg
journalctl -b0
c
ll
cd /usr/bin
ls -al gnome-shell
ls -al
cd
ll
cd /usr/bin
ll gnome-shell
su
cd
isolate m
cd /usr/bin
ll gnome-shell*
sudo cp --reflink gnome-shell-3.36.0 gnome-shell
ll gnome-shell*
isolate g
cd /b
mounts
ll
sudo btrfs sub list /|grep -v snapshot
sudo btrfs sub list /|grep 251
cd /usr/bin
ll gnome-sh*
cmp gnome-shell gnome-shell-3.36.0
cmp gnome-shell gnome-shell-3.36.1
reboot
c
sudo pacman -Syyu gnome-shell
cd /var/cache/pacman/pkg
ll gnome-*
pwd
cat /etc/fstab
sudo btrfs sub list /|grep -v snapshot
snapper list
reboot
c
pacman -Qi gnome-shell
cd /usr/bin
ll gnome-shell*
lsattr gnome-shell*
apropos attr
apropos attr|egrep ' \(1|8\) '
stat gnome-shell*
cmp gnome-shell*
cmp gnome-shell gnome-shell-3.36.1
cmp gnome-shell gnome-shell-3.36.0
stat gnome-shell gnome-shell-3.36.1
apropos acls
apropos ACL
apropos facl
getfacl gnome-shell*
journalctl -p0..3 -b0
journalctl -f
top
journalctl -p0..3 -b0
bye
c
journalctl -p0..3 -b0
systemctl suspend
journalctl -p0..3 -b0
journalctl -b0
date 
date -I
date --help
date -Ins
date -Isec
date -Isec >suspend.start && systemctl suspend && sleep 20 && date -Isec >suspend.finish
ll sus*
cat sus*
journalctl -b0
cd .ssh
ll
cat id_rsa.pub
sudo pacman -Syyu
sudo pacman -Fyy
journalctl -p0..2 -b0
journalctl -p0..2 -b0
journalctl -p0..2 -b0
journalctl -p0..2 -b0
journalctl -p0..2 -b0
journalctl -p0..2 -b0
journalctl -p0..2 -b0
journalctl -p0..2 -b0
journalctl -p0..2 -b0
pacman -Syyu
sudo pacman -Syyu
bye
journalctl -p0..3 -b0
date
ttys
targets
ps -efH
cd bin
ll
cat ttys
vim ttys
ttys
date
journalctl -p0..3 -b0
man acpi
apropos suspend
systemctl sleep
systemctl suspend
journalctl -p0..3 -b0
ttys
vim ttys
ttys
journalctl -p0..3 -b0
ttys
ttys
isolate m
sudo pacman -Syyu
reboot
c
systemctl status systemd-modules-load
systemctl status systemd-modules-load --no-pager -l
pacman -Q|grep snap
pacman -Qi snappy
locate snapd
free -h
uname -a
journalctl -p0..3 -b0
pacman -Syyu
sudo pacman -Syyu
bye
failed
alias
errors
journalctl -b0
isolate g
isolate m
cd /usr/bin
ll gnome-shell*
ll *-3.3?.?
sudo rm *-3.3?.?
ll gnome-shell*
sudo pacman -Syyu
top
reboot
c
errors
failed
isolate g
snapper list
errors
snapper create --help
snapper --help
snapper create --read-only -d "Seems stable"
snapper list
snapper -c home create --read-only -d "Seems stable"
snapper -c home list
sudo btrfs sub list /|grep -v snapshot
su
su
c
cd /var/lib
ll -d sys*
cd systemd
ll
ll -t
cd /b
ll
su
c
