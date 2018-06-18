#!/bin/sh

if which go >/dev/null 2>&1; then
	# install shfmt
	go get -u mvdan.cc/sh/cmd/shfmt
fi
