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
alias r1="rvm use 2.7.1"
alias r2="rvm use 2.7.0"
alias r3="rvm use 2.6.5"
alias fullcheck="bundle exec rubocop -DEc .rubocop.yml; RUBYOPT=-W:no-deprecated bundle exec rspec ; brakeman"

export BASH_ENV=~/.bashrc
export TERM=xterm-256color
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export KUBECONFIG=~/.kube/developer.kubeconfig
# https://stackoverflow.com/questions/12836312/postgresql-9-2-pg-dump-version-mismatch
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/usr/local/heroku/bin"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.rvm/gems/ruby-2.7.0/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# FL-CLI-Tools
function fl() { docker run -it -v ~/:/root/ docker.freeletics.com/fl-cli-tools:latest ${*:1}; }

__git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi
}

PS1="\w\$( __git_ps1 ) \$ "
force_color_prompt=yes
[[ $- == *i* ]] && stty -ixon # disable C-s terminal lock

