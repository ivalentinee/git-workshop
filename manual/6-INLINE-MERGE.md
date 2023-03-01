# Merge by inlining all conflicting changes
1. Reset `another-branch-merge-copy` to `another-branch`
   1. Have a look at latest commit in `another-branch-merge-copy` with `git branch -v -l another-branch-merge-copy`
   2. Explain `git reset`
   3. Reset `another-branch-merge-copy` to `another-branch` with `git checkout another-branch-merge-copy` and `git reset --hard another-branch`
   4. Look at `another-branch-merge-copy` with `git branch -v -l another-branch-merge-copy`
2. Merge `master` into `another-branch-merge-copy`
   1. Run `git merge master`
   2. Resolve conflicts like this:
       ```
       first line
       second line, second line part 2
       third line, third line part 2
       ```
   3. Finish merge
3. Add final commit
    1. Add `fourth line` to `file1.txt`, commit as `another-branch: added "fourth line"`
4. Create `master` copy for experiments with `git reset`
    1. Run `git checkout master-merge-copy` and `git reset --hard master`
5. Merge `another-branch-merge-copy` into `master-merge-copy`
    1. Run `git merge --no-ff another-branch-merge-copy`
    2. Run `git l`, show additional `merge` commit, run `git l graph`
    4. Run `git blame file1.txt`, show that per-line blame is **not** preserved\
       Run `git show <merge-master-commit>`
