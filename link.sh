#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "$0")" ; pwd -P )"
mkdir -p ~/.config

link_it () {
  SOURCE="${CURRENT_DIR}/$1"
  TARGET="${HOME}/$1"
  rm -rf "$TARGET"
  ln -vfFs "$SOURCE" "$TARGET"
}

link_it ".zprofile"
link_it ".zshrc"
link_it ".config/git"
link_it ".config/kitty"
