This tutorial was copied from here: http://neverstopbuilding.com/gitpro and was modified for my needs

## 1. Create the files you need

```
$ touch ~/.bash_profile
$ touch ~/.git-completion.bash
$ touch ~/.git-prompt.sh
```



## 2. Populate your completion file
In the `.git-completion.bash` file put the contents located here: https://github.com/git/git/blob/master/contrib/completion/git-completion.bash

Update the permissions of the file (not sure if this is necessary).

```
$ chmod 755 ~/.git-completion.bash
```



## 3. Populate your prompt file
In the `.git-prompt.sh` file, put the contents located here: https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh

Update the permissions of the file (not sure if this is necessary).

```
$ chmod 755 ~/.git-prompt.sh
```



## 4. Populate your .bash_profile

copy the `bash_profile` into your home directory as `.bash_profile` You may already have things in this file; if so, you may add this to the bottom or top.

## 5. Reset your terminal
