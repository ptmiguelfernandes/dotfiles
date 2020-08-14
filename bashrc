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
alias fullcheck="bundle exec rubocop -DEc .rubocop.yml; RUBYOPT=-W:no-deprecated bundle exec rspec ; brakeman"

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
export PATH="$PATH:/usr/local/heroku/bin"
export KUBECONFIG=~/.kube/developer.kubeconfig

PS1="\w\$( __git_ps1 ) \$ "
force_color_prompt=yes
[[ $- == *i* ]] && stty -ixon # disable C-s terminal lock

# FL-CLI-Tools
function fl() {
  $(aws ecr get-login --no-include-email --region eu-west-1);
  docker pull 524690225562.dkr.ecr.eu-west-1.amazonaws.com/fl-cli-tools:latest;
  docker run --rm -it -v ~/:/root/ 524690225562.dkr.ecr.eu-west-1.amazonaws.com/fl-cli-tools:latest ${*:1};
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"