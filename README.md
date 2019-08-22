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


