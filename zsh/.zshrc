export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gnzh"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
HIST_STAMPS="mm/dd/yyyy"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# load aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
