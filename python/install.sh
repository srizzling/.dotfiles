#!/bin/sh

set -e

if which brew >/dev/null 2>&1; then
    brew install pyenv || brew upgrade pyenv
    # install 3.6.2 first
    pyenv install 3.6.2
    brew install pyenv-virtualenv
fi

# configure global python version here. bye bye python2
ln -sf "$DOTFILES/python/python_version" "$(pyenv root)/version"
