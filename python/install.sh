#!/bin/sh

set -e

if which brew >/dev/null 2>&1; then
    brew install pyenv || brew upgrade pyenv
fi
