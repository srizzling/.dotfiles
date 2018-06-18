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

python_versions="
3.6.2
3.6.3
3.6.4
3.6.5
"

# pyenv_root is in $HOME/.pyenv probably :shrug:

pyenv_home="$HOME/.pyenv"

for version in $python_versions; do
	[ -d "$pyenv_home/versions/$version" ] || pyenv install "$version"
done

pyenv global 3.6.5
