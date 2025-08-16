#
# ~/.bashrc
#
fastfetch --kitty-direct /home/kumii39/Documents/Images/Amechan3.png
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# note careful on whitespaces in alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias vvim='nvim .'
alias vii='nvim'
alias vim='cd Godot/Godot || vii'

alias cm='cmake ..'
alias cc='cmake --fresh ..'
alias mm='make'


PS1='\[\e[37;45m\]\u\[\e[m\]\[\e[37;46m\]@\[\e[m\]\[\e[37;46m\]\h\[\e[m\]\[\e[37;45m\]\w\[\e[m\]\[\e[37;45m\]☆\[\e[m\] '
. "$HOME/.cargo/env"
