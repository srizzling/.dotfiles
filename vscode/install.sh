#!/bin/sh

if test "$(which code)"; then
	if [ "$(uname -s)" = "Darwin" ]; then
		VSCODE_HOME="$HOME/Library/Application Support/Code"
	else
		VSCODE_HOME="$HOME/.config/Code"
	fi

	# ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
	# ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"
	# ln -sf "$DOTFILES/vscode/snippets" "$VSCODE_HOME/User/snippets"

	# from `code --list-extensions`
	modules="
DavidAnson.vscode-markdownlint
EditorConfig.EditorConfig
Equinusocio.vsc-material-theme
PKief.material-icon-theme
PeterJausovec.vscode-docker
burtlo.inspec
himanoa.Python-autopep8
jaysonsantos.vscode-flake8
mauve.terraform
mohsen1.prettify-json
ms-python.python
ms-vscode.csharp
ms-vscode.Go
ms-vscode.PowerShell
ms-vscode.sublime-keybindings
rebornix.Ruby
streetsidesoftware.code-spell-checker
timonwong.shellcheck
tomoki1207.vscode-gfm-preview
wholroyd.jinja
wwm.better-align
carolynvs.dep
casualjim.gotemplate
foxundermoon.shell-format
haaaad.ansible
ipedrazas.kubernetes-snippets
	"
	for module in $modules; do
		code --install-extension "$module" || true
	done
fi
