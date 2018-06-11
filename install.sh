#!/bin/sh
#
# Run all dotfiles installers.
set -e

# find the installers and run them iteratively
git ls-tree --name-only -r HEAD | grep install.sh | while read -r installer; do

        # ignore self
        if $installer != "install.sh";
                echo "› ${installer}..."
	        sh -c "$installer"
        fi

done
