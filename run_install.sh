#!/bin/sh
#
# Run all dotfiles installers.
set -e

# find the installers and run them iteratively
git ls-tree --name-only -r HEAD | grep install.sh | while read -r installer; do
    echo "› ${installer}..."
    if [ "run_install.sh" != "$installer" ]; then
        sh -c "$installer"
    fi
done
