#!/bin/bash
#
# Fuzzy open files from inside the terminal

fuzzy_opener() {
  local file=$(find . | fzf --reverse --border=none --no-unicode --height=~8 --algo=v1)
  $EDITOR $file
}

fuzzy_opener
