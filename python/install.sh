#!/bin/sh

set -e

if which brew >/dev/null 2>&1; then
    brew install pyenv || brew upgrade pyenv
fi

# configure global python version here. bye bye python2
ln -sf "$DOTFILES/python/python_version" "$HOME/.pyenv/.python_version"
