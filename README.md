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
$ ln -s ~/path_to_this_repository/settings.json ~/Library/Application\ Support/Code/User/settings.json
etc...

continue for other config files
```



## 2. Restart your applications

You may need to restart all applications using these config files. If you add .bash_profile or make changes to it, you'll have to restart your terminal before you can see your changes. Alternatively, you can type this into your terminal:
```
source ~/.bash_profile
```


### Default location of original files (symlink to this location)

```
# Bash
~/.bash_profile
~/.bashrc

# Git
~/.git-completion
~/.git-prompt
~/.gitconfig

# Atom
~/.atom/snippents.cson
~/.atom/config.cson

# VS Code
~/Library/Application\ Support/Code/User/settings.json
```
