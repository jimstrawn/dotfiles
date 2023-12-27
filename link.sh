#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "$0")" ; pwd -P )"
mkdir -p ~/.config

link_it () {
  SOURCE="${CURRENT_DIR}/$1"
  TARGET="${HOME}/$1"
  rm -rf "$TARGET"
  ln -vfFs "$SOURCE" "$TARGET"
}

link_it ".config/nvim"
