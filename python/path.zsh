#!/bin/sh


# Configures the path to add the shim
if command -v pyenv 1>/dev/null 2>&1; then
 export PYENV_ROOT="$HOME/.pyenv"
 eval "$(pyenv init -)"
 eval "$(pyenv virtualenv-init -)"
fi


