#!/bin/bash

echo '-- merging --'

echo '== branching from "another-branch" to "another-branch-merge-copy" =='
git checkout another-branch-merge-copy
git reset --hard another-branch

echo '== merging "master" into "another-branch-merge-copy" =='
git merge master

echo '== resolving conflicts =='
echo 'first line
second line, second line part 2
third line, third line part 2' > file1.txt
git add .

echo '== continuing merge =='
git merge --continue

echo '== "another-branch-merge-copy" "another-branch-merge-copy commit 4"'
echo 'fourth line' >> file1.txt
git add .
git commit -m 'another-branch-merge-copy commit 4'

echo '== copying "master" into "master-merge-copy" =='
git checkout master-merge-copy
git reset --hard master

echo '== merging "another-branch-merge-copy" into "master-merge-copy" =='
git merge --no-ff another-branch-merge-copy
