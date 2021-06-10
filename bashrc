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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# FL-CLI-Tools
function fl() { docker run -it -v ~/:/root/ docker.freeletics.com/fl-cli-tools:latest ${*:1}; }

rvm use 3.0.1
