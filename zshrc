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
alias fullcheck="bundle exec rubocop -DEc .rubocop.yml; RUBYOPT=-W:no-deprecated bundle exec rspec; brakeman"

# PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

# autoload -Uz vcs_info
# precmd_vcs_info() { vcs_info }
# precmd_functions+=( precmd_vcs_info )
# setopt prompt_subst
# RPROMPT=\$vcs_info_msg_0_
# zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
# zstyle ':vcs_info:*' enable git

source $HOME/.rvm/scripts/rvm

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
export PATH="$PATH:$HOME/.rvm/gems/ruby-2.7.1/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/gems/ruby-2.7.0/bin" # Add RVM to PATH for scripting

# FL-CLI-Tools
function fl() { docker run -it -v ~/:/root/ docker.freeletics.com/fl-cli-tools:latest ${*:1}; }

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
