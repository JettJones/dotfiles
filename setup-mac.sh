#!/bin/bash

set -exuo pipefail

# directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# user home directory
if [ ! -f ~/.bashrc ]; then
  ln -s ${SCRIPT_DIR}/bashrc ~/.bashrc
fi

if [ ! -d ~/.emacs.d ]; then
  ln -s ${SCRIPT_DIR}/emacs.d ~/.emacs.d
fi
