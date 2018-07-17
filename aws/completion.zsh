#!/bin/sh
# shellcheck disable=SC1090

if command -v pyenv 1>/dev/null 2>&1; then
    # Sourceing shims is bugged in pyenv so to source from shims,
    # need to copy the completer to somewhere (using whatever is used in the version script?)
    # and then use that instead

    mkdir -p "$HOME/.zsh_completors"
    python_version=$(pyenv global)
    aws_completer_path="$PYENV_ROOT/versions/$python_version/bin/aws_zsh_completer.sh"
    cp "$aws_completer_path" "$HOME/.zsh_completors/aws_zsh_completer.sh"
    source "$HOME/.zsh_completors/aws_zsh_completer.sh"
fi
