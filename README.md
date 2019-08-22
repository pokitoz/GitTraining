# GitTraining
Basic git commands

## Push to a new remote

Add the remote, list the remotes,..
```
git remote --set-url github-upstream <url>
git remote -v
git push github-upstream
```

## Remove whitespace

Remove white space of current HEAD
```
git rebase --whitespace=fix HEAD~
```

If there are some unmodified changes, use
```
git stash && git rebase --whitespace=fix HEAD~ && git stash pop
```

## Execute command for multiple commits

```
git rebase -i -x "find ./ -type f -exec sed -i 's/old/new/g' {} +  && \
git commit -a --amend --no-edit" \
HEAD~
```

## Break a commit

Rebase to the commit, reset the commit, update the commit
```
git rebase -i HEAD~<N>
git reset HEAD~
git add ...
git commit -c ORIG_HEAD
git add ...
git commit -s
git rebase --continue
```

## Rebase patches onto a branch

Patches to be kept in the interactive rebase will be rebased onto the last
commit of the branch.
```
git fetch --all
git rebase -i origin/<branch name>
```

## Cherry pick a list of patches that follows

```
git fetch <specific commits>
git cherry-pick first-sha^..last-sh
```

## Reflog!

Probably the best command ever.. Gives the history of the previous commands.
```
git reflog
git reset --hard HEAD~{0}
git reset HEAD~{0}
```

## Git Stash!

List all the stashed changes (`stash@{i}` is the name to refer to)
```
git stash list
git stash show -p stash@{i}
```

Restore a stashed change (without argument it will be the one at top):
```
git stash pop stash@{i}
```

Stash a change with a specific name. It is also possible to stash with -p:
```
git stash save "blablabla"
git stash -p
```

Remove a stashed change with a specific name:
```
git stash drop stash@{i}
```

Do not remove the change from the stash put apply
```
git stash apply
```

