# Rebase by inlining all conflicting changes
1. Reset `another-branch-rebase-copy` to `another-branch`
   1. Reset `another-branch-rebase-copy` to `another-branch` with `git checkout another-branch-rebase-copy` and `git reset --hard another-branch`
2. Rebase `master` into `another-branch-rebase-copy`
   1. Run `git rebase master`
    3. Resolve conflict 1 like this and continue rebase:
        ```
        second line, second line part 2
        ```
    4. Explain extended conflict of both lines added
    5. Resolve conflict 2 like this and continue rebase:
        ```
        third line, third line part 2
        ```
3. Add final commit
    1. Add `fourth line` to `file1.txt`, commit as `another-branch: added "fourth line"`
4. Create `master` copy for experiments with `git reset`
    1. Run `git checkout master-rebase-copy` and `git reset --hard master`
5. Merge `another-branch-rebase-copy` into `master-rebase-copy`
    1. Run `git merge --no-ff another-branch-rebase-copy`
    2. Run `git l`, show no additional `merge` commit, run `git l graph`
    4. Run `git blame file1.txt`, show that per-line blame is preserved\
       Run `git show` on `second line` and `third line`, explain the diff
