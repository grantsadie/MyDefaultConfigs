#
# ~/.bash_profile
#
# ANSI color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
INV="\[\033[7m\]"   # inverse background and foreground
FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white

#[[ -f ~/.bashrc ]] && . ~/.bashrc

export LC_CTYPE=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8

bind '"\e[5~": history-search-backward'

green='\[\033[01;32m\]'
blue='\[\033[01;34m\]'
reset_color='\[\033[0m\]'

# Prompt
#PS1="%{$fg[green]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[green]%}%1~ %{$reset_color%}%# "
PS1="${green}[${reset_color}\u@${blue}\h${green}]${reset_color} \W \$ "

 

# Alias ls for color auto
alias ls='ls --color=auto'

# Load dircolors if possible
if type "dircolors" > /dev/null 2>&1; then
    if [[ -f ~/.dircolors ]]; then
        eval "$(dircolors -b ~/.dircolors)"
    else
        eval "$(dircolors -b)"
    fi
fi

export PATH=/home/grant/.local/bin:$PATH
