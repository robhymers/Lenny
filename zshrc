#==============================================================================#
#                    Lines configured by zsh-newuser-install                   #
#==============================================================================#
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rob/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#.zshrc file for Lenny

#===============================================================#
#                            ALIASES                            #
#===============================================================#

#pacman
alias update="sudo pacman -Syyu"
alias install="sudo pacman -S"
alias up="sudo pacman -Syyu"

#remove orphans
alias orphans="pacman -Qtdq | sudo pacman -Rns"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#get fastest mirrors in your neighborhood
alias mirrors="sudo reflector --verbose --sort rate -l 20 -c "Canada" -c "United States" --save /etc/pacman.d/mirrorlist"

#ssh
alias boris="ssh rob@192.168.1.61"

# run cmatrix
alias matrix="cmatrix -bas -u 4"


#=============================================================================#
#                            Rob's Big Bag of Weird Shit                      #
#=============================================================================#
#
export PATH=$PATH:~/Bin
export PATH=$PATH:~/Apps
export EDITOR=nvim

fastfetch -l arco

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh



