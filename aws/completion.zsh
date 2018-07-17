#!/bin/sh
# shellcheck disable=SC1090

# since, I'm using pyenv.. it should be loaded into the shims.. (which in theory
# should be loaded into the path)

test -e aws_zsh_completer.sh && . "$_"
