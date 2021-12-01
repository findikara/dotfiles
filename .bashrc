# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1="\[\e[1;33m\]\u \[\e[31m\]-> \[\e[1;32m\]\w \n\[\e[m\]\[\e[34m\] "
BP_RED="\[\e[1;31m\]"
BP_GRE="\[\e[1;32m\]"
BP_YEL="\[\e[1;33m\]"
BP_BLU="\[\e[1;34m\]"
BP_MAG="\[\e[1;35m\]"
BP_CYA="\[\e[m\]\[\e[36m\]"
LP_RED="\[\e[m\]\[\e[31m\]"
LP_GRE="\[\e[m\]\[\e[32m\]"
LP_YEL="\[\e[m\]\[\e[33m\]"
LP_BLU="\[\e[m\]\[\e[34m\]"
LP_MAG="\[\e[m\]\[\e[35m\]"
LP_CYA="\[\e[m\]\[\e[36m\]"
BP_RES="\[\e[m\]"

PS1="${BP_YEL} ${BP_GRE}\w \n${LP_BLU} "

trap 'echo -ne "\e[0m"' DEBUG

#bind 'set show-all-if-ambiguous on'
#bind 'TAB:menu-complete'

# Export
export TERM=xterm-256color
export HISTCONTROL=ignoredups:erasedups
export LC_COLLATE="C"

# Aliases
alias dpal='cd ~/Project/tex/doc-dpal/'

alias ls='ls -la --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

alias emacs="emacsclient -c -a 'emacs'"

alias vrc="vim ~/.config/vim/vimrc"
alias vpg="vim ~/.config/vim/plugins.vim"
alias vmp="vim ~/.config/vim/mappings.vim"
alias brc="vim ~/.bashrc"

alias cdwm="cd ~/.config/suckless/dwm"
alias texd="cd ~/Project/tex"

alias rr="ranger --cmd=tab_new --cmd='tab_open 1'"
alias r="ranger"
alias rdwm="ranger ~/.config/suckless/dwm"
alias rdmn="ranger ~/.config/suckless/dmenu"

alias suckins="make && sudo make install && rm -rf config.h"

alias pac="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias pacrm="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
alias par="paru -Slq | fzf --multi --preview 'paru -Si {1}' | xargs -ro paru -S"
alias parrm="paru -Qq | fzf --multi --preview 'paru -Qi {1}' | xargs -ro paru -Rns"

alias gitdot="/usr/bin/git --git-dir=$HOME/Gits/dotfiles --work-tree=$HOME"
alias suckless="/usr/bin/git --git-dir=$HOME/.config/suckless/.git --work-tree=$HOME/.config/suckless"

neofetch
