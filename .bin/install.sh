# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# install files from our git repo
git clone --bare https://github.com/cadencorontzos/dotfiles.git $HOME/.dotfiles
function dotfiles {
	/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}
mkdir -p .dotfiles-backup
dotfiles checkout
if [ $? = 0 ]; then
	echo "Checked out dotfiles. ";
else
	echo "Backing up pre-existing dotfiles.";
	dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi;
dotfiles checkout

# we only want to add files deliberately
dotfiles config status.showUntrackedFiles no

# install our brew packages
brew bundle --file=.brewfiles/Brewfiles

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
