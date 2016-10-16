Installation

    git clone git://github.com/itmiguelfernandes/dotfiles.git

Vim plugins are installed as git submodules. Check these out by running the commands:

    cd dotfiles
    git submodule init
    git submodule update

Create symlinks:

    ln -s ~/dotfiles/bashrc ~/.bashrc
    ln -s ~/dotfiles/bash_profile ~/.bash_profile
    ln -s ~/dotfiles/spacemacs ~/.spacemacs
    ln -s ~/dotfiles/.emacs.d/private/snippets ~/.emacs.d/private/snippets
    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/tmux ~/.tmux
    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/gitconfig ~/.gitconfig

I put Vim's backup and swap files in `~/tmp`, so that directory must exist. To
be sure, run:

    mkdir ~/tmp

# VIM #

My preferences for Vim are stored in `dotfiles/vimrc`. All plugins and scripts are stored in the `dotfiles/vim`
directory.

## Adding Plugin Bundles ##

Plugins that are published on github can be installed as submodules. For
example, to install the [JavaScript bundle][jsbun], follow these steps:

    cd ~/dotfiles
    git submodule add http://github.com/pangloss/vim-javascript.git vim/bundle/vim-javascript

This will update the `.gitmodules` file by appending something like:

    [submodule "vim/bundle/vim-javascript"]
        path = vim/bundle/vim-javascript
        url = http://github.com/pangloss/vim-javascript.git

Add `ignore = dirty` to each submodule definition:

    [submodule "vim/bundle/vim-javascript"]
        path = vim/bundle/vim-javascript
        url = http://github.com/pangloss/vim-javascript.git
        ignore = dirty

## Update Plugins ##
    cd ~/dotfiles
    git submodule foreach git pull origin master
