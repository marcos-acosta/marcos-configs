# CONSTANTS
CONFIG_DIR=~/.config
ALIASES_PATH=~/.config/zsh/scripts/aliases.sh

# GRADLE
alias gb="./gradlew build"
alias gr="./gradlew run --stacktrace"
alias gt="./gradlew test"

# FILESYSTEM
alias h="cd ~/marcos"
alias dl="cd ~/Downloads"
alias c="cd ~/marcos/code"
alias ls="ls -A"
alias notes="code /Users/marcos/marcos/notes/"

# NPM
alias pub="npm run build && npm publish"

# ZSH SCRIPTS
alias ra="source $ALIASES_PATH"

# RENAMING
alias python=python3

# EDITING
alias ea="nv $ALIASES_PATH && ra"
alias lg="nv /Users/marcos/marcos/notes/log.md"
alias bd="nv /Users/marcos/marcos/notes/braindump.md"

# APPLICATIONS
alias nv=/Users/marcos/marcos/installs/nvim-macos/bin/nvim

# CONFIG EDITING
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
  elif [[ $1 = "vim" ]]; then
    nv ~/.vimrc
  else
    cd $CONFIG_DIR/$1
  fi
}

# REACT

mc() {
  touch "$1.tsx"
  touch "$1.module.css"
}
