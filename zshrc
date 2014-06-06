# Pre oh-my-zsh
# -------------

export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=13

ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="false"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
DISABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="false"
ZSH_CUSTOM=$HOME/.dotfiles/zsh
DEFAULT_USER=`whoami`

plugins=(git python)


# Activate oh-my-zsh
# ------------------

source $ZSH/oh-my-zsh.sh


# Post oh-my-zsh
# --------------

export PATH="$HOME/bin:$PATH"
export LANG=en_US.UTF-8
export EDITOR='vim'


# Load local config if any
# ------------------------

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
