# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
LC_CTYPE="ru_RU.UTF-8"
export LANG="ru_RU.UTF-8"
LC_ALL=ru_RU.UTF-8
# time that oh-my-zsh is loaded.
ZSH_THEME="gozilla"
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
# User configuration
export LFS=/mnt/lfs
export PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin"
alias s='sudo pacman -S'
alias y='sudo yaourt -S'
alias shut='systemctl poweroff'
alias search='yaourt -Ss'
alias awconf='nano ~/.config/awesome/rc.lua'
alias nano='sudo nano'
alias update='sudo yaourt -Syua --noconfirm'
alias remove='sudo yaourt -Rs'
alias cp='cp -r'
alias rm='rm -rf'
alias doom='~/Downloads/fallenangel/doom3.x86'
alias ...='cd ../../../'
alias cd..='cd ..'
alias cd ..='..'
alias net='sudo dhcpcd'
alias teamstart='sudo systemctl start teamviewerd.service'
alias teamstop='sudo systemctl stop teamviewerd.service'
alias grep='grep --colour=auto'
alias tree='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
alias S='sudo'
alias calc='gnome-calculator'
alias disk='sudo fdisk -l'
alias zconf='nano ~/.zshrc'
#alias image='dd if=/dev/cdrom of='
alias -s {avi,mpeg,mpg,mov,m2v}=totem
alias -s {pdf,djv,fb2}=evince
alias -s {mp3,ogg,flac}=ncmpcpp
alias -s {odt,doc,docx,sxw,rtf}=libreoffice
alias -s {bmp,jpg,jpeg,gif,png}=gpicview
alias -s {cpp, h, rb, txt}=subl3
autoload -U pick-web-browser
alias -s {html,htm}=chromium

