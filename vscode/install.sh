#!/bin/sh

if test "$(which code)"; then
	if [ "$(uname -s)" = "Darwin" ]; then
		VSCODE_HOME="$HOME/Library/Application Support/Code"
	else
		VSCODE_HOME="$HOME/.config/Code"
	fi

	echo "Replacing homedir in vscode settings"

	sed "s;/Users/sriram.venkatesh;$HOME;g" \
		"$DOTFILES"/vscode/settings.json.tmpl >"$DOTFILES"/vscode/settings.json
	
	echo "Symlink settings json file to correct location"

	ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
	
	echo "Installing modules"	
	modules="$DOTFILES/vscode/modules.txt"
	# from `code --list-extensions`
	while read -r module; do
		code --install-extension "$module" || true
	done <"$modules"
fi
