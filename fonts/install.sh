#!/bin/sh

if [ "$(uname -s)" = "Darwin" ]; then
	if which brew >/dev/null 2>&1; then
		brew cask install font-hack
	else
		echo "Couldn't install font because brew isn't installed"
	fi
else
	if which dnf >/dev/nill 2>&1; then
		sudo dnf install adobe-source-code-pro-fonts
	else
		echo "Not using fedora?"
	fi
fi
