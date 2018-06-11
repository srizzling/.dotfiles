#!/bin/sh



# Configures the path to add the shim
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
 export PYENV_ROOT="$HOME/.pyenv"
fi
