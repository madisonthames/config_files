This tutorial was copied from here: http://neverstopbuilding.com/gitpro and was modified for my needs

## 1. Create symlinks for each file

If the file already exists, you will have to delete it before creating a symlink
```
$ ln -s ~/path_to_this_repository/bash/bash_profile ~/.bash_profile
$ ln -s ~/path_to_this_repository/bash/bashrc ~/.bashrc
$ ln -s ~/path_to_this_repository/git/git-completion.bash ~/.git-completion.bash
$ ln -s ~/path_to_this_repository/git/git-prompt.sh ~/.git-prompt.sh
$ ln -s ~/path_to_this_repository/atom/snippets.cson ~/.atom/snippets.cson
$ ln -s ~/path_to_this_repository/atom/config.cson ~/.atom/config.cson
etc...

continue for other config files
```



## 2. Reset your terminal

```
source ~/.bash_profile
```
