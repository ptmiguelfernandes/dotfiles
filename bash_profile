source $HOME/.bashrc
source $HOME/.profile

# FL-CLI-Tools
function fl() { docker run -it -v ~/:/root/ docker.freeletics.com/fl-cli-tools:latest ${*:1}; }