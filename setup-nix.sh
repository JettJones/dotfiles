#!/bin/bash
set -exuo pipefail

# find the directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# add symlinks to user home directory
if [ ! -f ~/.bash_aliases ]; then
  ln -s ${SCRIPT_DIR}/bash_aliases ~/.bash_aliases
fi

if [ ! -d ~/.emacs.d ]; then
  ln -s ${SCRIPT_DIR}/emacs.d ~/.emacs.d
fi
