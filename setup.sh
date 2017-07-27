#!/bin/bash

set -e
set -u

readonly THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
readonly VIMRC_FILE="$THIS_SCRIPT_DIR/../.vimrc"

if [ -f "$VIMRC_FILE" ]
then
	echo ".vimrc exists: create backup file .vimrc.bak"
	mv "$VIMRC_FILE" "$VIMRC_FILE.bak"
fi

echo "runtime vimrc" > "$VIMRC_FILE"

