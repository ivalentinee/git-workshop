# Add commits and branches
1. First commit:
    1. Create text file named `file1.txt` with `first line` as a content
    2. Look at unstaged file with `git st`
    3. Run `git add .`, explain why `.` and what `git add` does, have a look at `git st` file
    4. Run `git commit`, see if `GIT_EDITOR` is set, commit as `add file1.txt`
    5. Run `git log`, `git l`, `git st`, have a look at `.git/refs/heads/master` (spoiler: there's commit hash in it)
2. Second commit:
    1. Create text file named `file2.txt` with `file 2 first line` as a content
    2. Commit it as `add file2.txt` with `git commit -m 'add file2.txt'`
    3. Run `git l`, have a look at `.git/refs/heads/master` (spoiler: there's latest commit hash in it)\
       Run `git show HEAD` and `git show HEAD^`
3. Create another branch:
    1. Run `git branch`, see only `master` appearing
    2. Run `git branch another-branch master`, run `git branch`, look at the new branch
4. Add lines to `file1.txt`
    1. Add second line of `second line` to `file1.txt`
    2. Run `git st` and `git diff`, look at diff
    3. Commit changes as `master: added "second line"`
    4. Add another line of `third line` to `file1.txt`, commit it as `master: added "third line"`
5. Create conflicting lines in `file1.txt` within `another-branch`:
    1. Perform checkout with `git checkout another-branch`, run `git st` and `git l`
    2. Add second line of `second line part 2` to `file1.txt`, commit it as `another-branch: added "second line part 2"`
    3. Add third line of `third line part 2` to `file1.txt`, commit it as `another-branch: added "third line part 2"`
