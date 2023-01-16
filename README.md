# Test

This in my default shell configuration

## Installation

Prerequisites
* git

Go to the home directory
```
	cd $HOME
```	

First, pull the install script using wget
```
	wget https://raw.githubusercontent.com/cadencorontzos/dotfiles/main/.bin/install.sh -O install.sh
```
Now run the install script
```
	bash install.sh
```
It's that easy. You may have to restart/logout if bash was your default before.

## Uninstall

Upon installation, any conflicting files will be moved to `$HOME/.dotfiles-backup
