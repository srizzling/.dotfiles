#!/bin/sh

kubectl() {
	# shellcheck disable=SC1090,SC2039
	source <(command kubectl completion zsh)
	command kubectl "$@"
}

alias kx='kubectx'
alias kn='kubens'
alias kc='kubectl'



