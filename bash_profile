export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/bin"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if [ -f "$HOME/.bashrc" ]; then
  source $HOME/.bashrc
fi

export TERM=xterm-256color

# disable C-s terminal lock
stty -ixon

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH="$GEM_HOME/bin:$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source /usr/local/etc/bash_completion
source <(kubectl completion bash)

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
