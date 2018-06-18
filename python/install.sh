#!/bin/sh

set -e

if which brew >/dev/null 2>&1; then
    brew install pyenv || brew upgrade pyenv
    brew install pyenv-virtualenv || brew upgrade pyenv-virtualenv
    pyenv install 3.6.2
    pyenv install 3.6.3
    pyenv install 3.6.4
    pyenv install 3.6.5
    pyenv global 3.6.5
fi