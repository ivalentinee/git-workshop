#!/bin/bash

echo '-- setting up source branches --'

echo '== commit "add file1.txt" =='
echo 'first line' > file1.txt
git add .
git commit -m 'add file1.txt'

echo '== commit "add file2.txt" =='
echo 'file 2 first line' > file2.txt
git add .
git commit -m 'add file2.txt'

echo '== branching from "master" to "another branch" =='
git branch another-branch master

echo '== "master" "commit 2" =='
echo 'second line' >> file1.txt
git add file1.txt
git commit -m 'master: added "second line"'

echo '== "master" "commit 3" =='
echo 'third line' >> file1.txt
git add file1.txt
git commit -m 'master: added "third line"'

echo '== creating "another-branch" from "master" =='
git branch another-branch master

echo '== checking out "another-branch" =='
git checkout another-branch

echo '== "another-branch" commit 2 =='
echo 'second line part 2' >> file1.txt
git add file1.txt
git commit -m 'another-branch: added "second line part 2"'

echo '== "another-branch" commit 3 =='
echo 'third line part 2' >> file1.txt
git add file1.txt
git commit -m 'another-branch: added "third line part 2"'
