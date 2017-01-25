autoload -Uz compinit promptinit
compinit
promptinit
#prompt walters
#ZSH_THEME="agnoster"

#syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


#powerline
if [[ -r /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
fi


#recent dirs
DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 
0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1]
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}
DIRSTACKSIZE=20
setopt AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME
## Remove duplicate entries
setopt PUSHD_IGNORE_DUPS
## This reverts the +/- operators.
setopt PUSHD_MINUS


#alias
alias b="sudo chmod 777 /sys/class/backlight/radeon_bl0/brightness"
alias bs="sudo tee /sys/class/backlight/radeon_bl0/brightness <<< $1"
alias gitu="git add -A && git commit -m "update" && git push origin master"
alias gitd="git pull origin master"
alias ins="sudo pacman -S $1"
alias yao="yaourt --noconfirm $1"
alias up="sudo pacman -Syyyu && yaourt -Sya"
alias config="vim /home/user/dotfiles/i3/.config/i3/config && cd /home/user/dotfiles && gitu & cd /home/user"
alias pkglist-pc="pacman -Qqen > /home/user/dotfiles/pkglist-pc && gitu"
alias pkglist-lap="pacman -Qqen > /home/user/dotfiles/pkglist-lap && gitu"
alias system-config="sudo cp /etc/fstab /home/user/.config/system-config && sudo cp /etc/grub.d/40_custom /home/user/.config/system-config && sudo cp /etc/mkinitcpio.conf /home/user/.config/system-config && sudo cp /etc/pacman.conf /home/user/.config/system-config && sudo cp -r /etc/udev/rules.d /home/user/.config/system-config/ && gitu"
alias i2prouter="/home/user/Downloads/i2p/i2prouter $1"
alias unicode="echo  ±  ➦ ✘ ⚡ "

