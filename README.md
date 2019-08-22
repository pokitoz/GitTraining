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

