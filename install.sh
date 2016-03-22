#!/bin/sh

sh mac 2>&1 | tee ~/laptop.log

(
  "cd $HOME" || exit 1
  git clone git@github.com:myhireQ/dotfiles.git
  env RCRC="$HOME/dotfiles/rcrc rcup"
)
