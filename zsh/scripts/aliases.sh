# CONSTANTS

CONFIG_DIR=~/.config
ALIASES_PATH=~/.config/zsh/scripts/aliases.sh

# FILESYSTEM

alias h="cd ~/h"
alias downloads="cd ~/Downloads"
alias c="cd ~/h/code"
alias ls="ls -A"

config ()
{
  if [[ $1 = "tmux" ]]; then
    nv $CONFIG_DIR/tmux/.tmux.conf
  elif [[ $1 = "alacritty" ]]; then
    nv $CONFIG_DIR/alacritty/alacritty.yml
  elif [[ $1 = "nv" ]]; then
    cd $CONFIG_DIR/nvim && nv init.lua
  elif [[ $1 = "zsh" ]]; then
    cd $CONFIG_DIR/zsh && nv .zshrc
  else
    cd $CONFIG_DIR/$1
  fi
}

# ZSH SCRIPTS
alias reload-scripts="source $ALIASES_PATH"

# RENAMING
alias python=python3

# EDITING
alias edit-aliases="nv $ALIASES_PATH"

# APPLICATIONS
alias nv=/Users/marcos/h/installations/nvim-macos/bin/nvim

