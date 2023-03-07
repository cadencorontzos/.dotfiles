export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gnzh"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
HIST_STAMPS="mm/dd/yyyy"
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# load aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# source nix
if [ -e /home/caden/.nix-profile/etc/profile.d/nix.sh ]; then . /home/caden/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
