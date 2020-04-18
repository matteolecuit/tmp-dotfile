# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

ENABLE_CORRECTION="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="dd/mm/yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh

#bindkey -v
#export KEYTIMEOUT=1

# lfcd () {
#    tmp="$(mktemp)"
#    lf -last-dir-path="$tmp" "$@"
#    if [ -f "$tmp" ]; then
#        dir="$(cat "$tmp")"
#        rm -f "$tmp"
#        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
#    fi
# }
#bindkey -s '^o' 'lfcd\n'
#
#autoload edit-command-line; zle -N edit-command-line
#bindkey '^e' edit-command-line

# Aliases
alias ls='lsd' # https://github.com/Peltoche/lsd
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias pb="nc termbin.com 9999" # https://github.com/solusipse/fiche
alias vi='vim'
alias updatestartpage='sudo cp -f /home/matteo/.cache/wal/colors.css /srv/http/startpage/colors.css'
alias processing='sh /usr/share/processing/processing-3.5.4-linux64/processing-3.5.4/processing'
# Startup actions
#todo # https://github.com/aesophor/py-todo
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
eval "$(starship init zsh)"
