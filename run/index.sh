#!/bin/bash

SCRIPT_DIR="$(pwd)/$(dirname "${BASH_SOURCE[0]}")"

source "$SCRIPT_DIR/2-initialize.sh"
source "$SCRIPT_DIR/3-setup-source-branches.sh"
source "$SCRIPT_DIR/4-merge.sh"
source "$SCRIPT_DIR/5-rebase.sh"
source "$SCRIPT_DIR/6-merge-inline.sh"
source "$SCRIPT_DIR/7-rebase-inline.sh"
source "$SCRIPT_DIR/status.sh"
