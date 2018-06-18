#!/bin/sh

set -e

if which brew >/dev/null 2>&1; then
    brew install pyenv || brew upgrade pyenv
    brew install pyenv-virtualenv || brew upgrade pyenv-virtualenv
else
    if which pyenv >/dev/null 2>&1; then
        pyenv update
    else
        curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
    fi
fi

pyenv install 3.6.2 || true
pyenv install 3.6.3 || true
pyenv install 3.6.4 || true
pyenv install 3.6.5 || true
pyenv global 3.6.5 || true