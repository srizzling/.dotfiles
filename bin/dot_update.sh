#!/bin/sh
#
# dot_update
#
# `dot_update` handles installation, updates, things like that. Run it
# periodically to make sure you're on the latest and greatest.
export DOTFILES="$HOME/.dotfiles"
cd "$DOTFILES" || exit 1

# fixes PATH (we could be running from the crontab)
PATH="$(command -p getconf PATH):/usr/local/bin"

# load custom config if any
# shellcheck disable=SC1090
[ -f ~/.localrc ] && . ~/.localrc

# ssh would not work under cron, add a https one
echo "› setting up update channel"
git remote add updates https://github.com/srizzling/.dotfiles.git 2>/dev/null

# Update repo
echo "› git update"
git pull --rebase --stat updates "$(git rev-parse --abbrev-ref HEAD)"

# Update submodules
echo "› submodules update"
git submodule update --init --recursive --remote --merge --quiet

# Run all installs
echo "› $DOTFILES/run"
"$DOTFILES/run.sh"

if which antibody >/dev/null 2>&1; then
	echo "› antibody update"
	antibody update
fi

echo "› registering last update"
git config --global dotfiles.lastupdate "$(date +%Y%m%d%H%M)"
