source $HOME/.bashrc
source $HOME/.profile

# FL-CLI-Tools
function fl() { docker run -it -v ~/:/root/ docker.freeletics.com/fl-cli-tools:latest ${*:1}; }

# https://stackoverflow.com/questions/12836312/postgresql-9-2-pg-dump-version-mismatch
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
