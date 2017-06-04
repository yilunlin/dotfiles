#!/bin/bash

if [ ! -z `grep "\[include\]" ~/.gitconfig` ]; then
  exit 0
fi

cat << __EOF__

[include]
	path = .dotfiles/gitconfig
__EOF__
