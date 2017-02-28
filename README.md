This tutorial was copied from here: http://neverstopbuilding.com/gitpro and was modified for my needs

## 1. Create symlinks

```
$ ln -s /path_to_this_repository/bash/bash_profile ~/.bash_profile
$ ln -s /path_to_this_repository/bash/bashrc ~/.bashrc
$ ln -s /path_to_this_repository/bash/git-completion.bash ~/.git-completion.bash
$ ln -s /path_to_this_repository/bash/git-prompt.sh ~/.git-prompt.sh
...

continue for other config files
```



## 2. Reset your terminal

```
source ~/.bash_profile
```
