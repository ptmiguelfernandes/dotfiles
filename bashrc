__git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi
}

source /usr/local/etc/bash_completion
source <(kubectl completion bash)

export BASH_ENV=~/.bashrc
export TERM=xterm-256color
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="$PATH:$HOME/bin"
export PATH="/usr/local/heroku/bin:$PATH" # Added by the Heroku Toolbelt
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PROMPT_DIRTRIM=2
PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]\[\033[01;34m\] \w\$( __git_ps1 ) \$\[\033[00m\] "
force_color_prompt=yes
stty -ixon # disable C-s terminal lock

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias ..6="cd ../../../../../.."
alias be="bundle exec"
alias ret="RAILS_ENV=test"
alias rdcms="rails db:drop db:create db:migrate db:seed"
alias rubo="bundle exec rubocop -DEc .rubocop.yml"

PATH="$GEM_HOME/bin:$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[ -s ${HOME}/.rvm/scripts/rvm ] && source ${HOME}/.rvm/scripts/rvm