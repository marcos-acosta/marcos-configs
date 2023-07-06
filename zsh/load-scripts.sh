SCRIPTS_DIR="/Users/marcos/.config/zsh/scripts/"

for script in $(ls $SCRIPTS_DIR); do
  source $SCRIPTS_DIR/$script
done

