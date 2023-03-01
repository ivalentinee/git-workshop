# Rebase by including all conflicting changes
1. Create `another-branch` copy for experiments
    1. Create a branch for rebase experiments by `git checkout -b another-branch-rebase-copy another-branch`
2. Rebase onto `master`
    1. Rebase onto `master` by running `git rebase master`
    2. Look at conflicts with `git st` and `git diff`, explain about applying commits one-by-one\
       Resolve conflict 1 like this:
        ```
        second line
        second line part 2
        ```
    3. Run `git add .` and `git rebase --continue`, explain that `git rebase` adds changes to current commit
    4. Resolve conflict 2 like this:
        ```
        third line
        third line part 2
        ```
       Run `git add .` and `git rebase --continue`
    5. Run `git l`, `git show HEAD` and `git show HEAD^`
    6. Run `git blame file1.txt`, show that per-line blame is preserved
3. Add final commit
    1. Add `fourth line` to `file1.txt`, commit as `another-branch: added "fourth line"`
4. Create `master` copy for experiments
    1. Run `git checkout -b master-rebase-copy master`
5. Merge `another-branch-rebase-copy` into `master-rebase-copy`
    1. Run `git merge --no-ff another-branch-rebase-copy`, explain no conflicts
    3. Run `git l`, then run `git l --graph` (`git log --pretty=oneline --graph`)
    4. Run `git blame file1.txt`, show that per-line blame is preserved
