export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$HOME/bin:$PATH

if [ -f "$HOME/.bashrc" ]; then
  source $HOME/.bashrc
fi

export TERM=xterm-256color

# disable C-s terminal lock
stty -ixon

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
