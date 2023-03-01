#!/bin/bash

echo '-- rebasing --'

echo '== branching from "another-branch" to "another-branch-rebase-copy" =='
git checkout -b another-branch-rebase-copy another-branch

echo '== rebasing "another-branch-rebase-copy" onto "master" =='
git rebase master

echo '== resolving conflicts 1 =='
echo 'first line
second line
second line part 2
third line' > file1.txt
git add .

echo '== continuing rebase 1 =='
git rebase --continue

echo '== resolving conflicts 2 =='
echo 'first line
second line
second line part 2
third line
third line part 2' > file1.txt
git add .

echo '== continuing rebase 2 =='
git rebase --continue

echo '== "another-branch-rebase-copy" "another-branch-rebase-copy commit 4"'
echo 'fourth line' >> file1.txt
git add .
git commit -m 'another-branch-rebase-copy commit 4'

echo '== copying "master" into "master-rebase-copy" =='
git checkout -b master-rebase-copy master

echo '== merging "another-branch-rebase-copy" into "master-rebase-copy" =='
git merge --no-ff another-branch-rebase-copy
