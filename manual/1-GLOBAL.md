# Set up global git config
1. Try getting default user name by running `git config --global --get user.name` (spoiler: it's empty)
2. Set name and email by `git config --global --add user.name` (spoiler: it's empty)
3. Find user directory:
    - Linux: `/home/<username>/` or `$HOME`
    - MacOS: `/home/<username>/` or `$HOME`
    - Windows: `C:\Users\<username>\`
4. Find global `.gitconfig` file
5. Manually add aliases to `[alias]` section:
    - `l = log --pretty=oneline`
    - `st = status -sb`
