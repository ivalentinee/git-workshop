#!/bin/bash

export TARGET_FOLDER="/tmp/git-masterclass-example"

echo '-- Initializing --'
rm -rf "$TARGET_FOLDER"
mkdir -p "$TARGET_FOLDER"

cd "$TARGET_FOLDER"
git init
