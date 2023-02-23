# Dotfiles 

These are some of my config files for Unix-like systems.

I use a zsh terminal with oh-my-zsh and neovim with several plugins.

## Installation

Prerequisites
* git

Go to your home directory
```
cd $HOME
```	
and clone this repo. Go into the project directory (`$HOME/.dotfiles`) and run the install script

```
cd .dotfiles
sh install.sh
```

## Stow 

If you want to update your files, run 

```
git pull && sh .scripts/link_folders.sh
```

There may be issues with the symlinks if you already have some of the dotfiles with the same names in your home directory. If this happens, back up the files it complains about to a `~/.backup` directory and try linking folders again.

## Fonts

If you don't have the proper fonts installed, 

```
sh .scripts/fonts.sh
```

