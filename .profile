
source ~/dotfiles/path_setup.sh
source ~/dotfiles/git_setup.sh

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home

# Add completions made by homebrew
if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

source ~/dotfiles/pip_setup.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export MITSCHEME_LIBRARY_PATH="/Applications/mit-scheme.app/Contents/Resources"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

ERL_HOME="/Users/alex/.erlangs"
export PATH=$ERL_HOME/current/bin:$PATH
source ~/.erl_helpers.sh
