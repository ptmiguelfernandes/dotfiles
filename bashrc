alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias ..6="cd ../../../../../.."
alias be="RUBYOPT=-W:no-deprecated bundle exec"
alias ret="RAILS_ENV=test"
alias rdcms="rails db:drop db:create db:migrate db:seed"
alias rubo="bundle exec rubocop -DEc .rubocop.yml"
alias rs="RUBYOPT=-W:no-deprecated bundle exec rails server"
alias rc="RUBYOPT=-W:no-deprecated bundle exec rails console"
alias rsp="RUBYOPT=-W:no-deprecated bundle exec rspec"
alias r1="rvm use 2.7.0"
alias r2="rvm use 2.6.5"
alias hrc='heroku run "RUBYOPT=-W:no-deprecated rails c"'

__git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi
}

export BASH_ENV=~/.bashrc
export TERM=xterm-256color
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="$PATH:$HOME/bin"
# NOTE: Heroku wrongly adds the path without $PATH. https://stackoverflow.com/questions/22650731/rvm-warning-path-is-not-properly-set-up
# export PATH="/usr/local/heroku/bin:$PATH" # Added by the Heroku Toolbelt
export PATH="$PATH:/usr/local/heroku/bin"
export KUBECONFIG=~/.kube/developer.kubeconfig
export GEM_PATH=$HOME/.rvm/gems/
export GEM_HOME=$HOME/.rvm/rubies/
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]\[\033[01;34m\] \w\$( __git_ps1 ) \$\[\033[00m\] "
PS1="\w\$( __git_ps1 ) \$ "
force_color_prompt=yes
stty -ixon # disable C-s terminal lock

PATH="$GEM_HOME/bin:$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[ -s ${HOME}/.rvm/scripts/rvm ] && source ${HOME}/.rvm/scripts/rvm

# FL-CLI-Tools
function fl() {
  $(aws ecr get-login --no-include-email --region eu-west-1);
  docker pull 524690225562.dkr.ecr.eu-west-1.amazonaws.com/fl-cli-tools:latest;
  docker run --rm -it -v ~/:/root/ 524690225562.dkr.ecr.eu-west-1.amazonaws.com/fl-cli-tools:latest ${*:1};
}
