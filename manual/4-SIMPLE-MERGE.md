# Merge by including all conflicting changes
1. Create `another-branch` copy for experiments
    1. Create a branch for merge experiments by `git checkout -b another-branch-merge-copy another-branch`, explain `git checkout -b`, run `git st`
2. Merge `master`
    1. Merge `master` into `another-branch-merge-copy` by running `git merge master`
    2. Look at conflicts with `git st` and `git diff`, explain about dynamic git diffs\
       Resolve conflicts like this:
        ```
        second line
        second line part 2
        third line
        third line part 2
        ```
    3. Run `git add file1.txt` and `git merge --continue`, commit changes
    4. Run `git l`, `git show HEAD` and `git show HEAD^`
    5. Run `git blame file1.txt`, show that per-line blame is preserved
3. Add final commit
    1. Add `fourth line` to `file1.txt`, commit as `another-branch: added "fourth line"`
4. Create `master` copy for experiments
    1. Run `git checkout -b master-merge-copy master`
5. Merge `another-branch-merge-copy` into `master-merge-copy`
    1. Run `git merge --no-ff another-branch-merge-copy`, explain, what `--no-ff` means, explain no conflicts
    2. Run `git show HEAD`, `git show HEAD^`, `git show HEAD^^^`\
       Run `git show HEAD^2`, `git show HEAD^2^^`, `git show HEAD^2^^2` (which goes the second root)\
       Explain why git behaves like that
    3. Run `git l`, then run `git l --graph` (`git log --pretty=oneline --graph`)
    4. Run `git blame file1.txt`, show that per-line blame is preserved\
       Describe weird `^<ref>` line
