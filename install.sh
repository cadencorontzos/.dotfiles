# install nix
curl -L https://nixos.org/nix/install | sh

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.git \
	nixpkgs.vim \
	nixpkgs.neovim \
	nixpkgs.stow \
	nixpkgs.rustup \
	nixpkgs.python3 \
	nixpkgs.ruby \
	nixpkgs.ripgrep \
	nixpkgs.nodejs  \

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc

# stow folders
sh link_folders.sh

# add zsh as a login shell
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER
zsh
