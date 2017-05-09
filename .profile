DOTFILES=$HOME/src/alexmoore/dotfiles

source $DOTFILES/path_setup.sh
source $DOTFILES/git_setup.sh
source $DOTFILES/helper_functions.sh

# Add completions made by homebrew
if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi
