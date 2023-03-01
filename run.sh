#!/bin/bash

TARGET_FOLDER="./example"

echo '-- Cleanup --'
rm -rf "$TARGET_FOLDER"
mkdir -p "$TARGET_FOLDER"

echo '-- Autorun --'

echo '==  Initializing =='
cd "$TARGET_FOLDER"
git init

echo '==  Initial commit =='
cp ../samples/file1.txt ./
git add file1.txt
git commit -m 'Initial commit'
git status
