# install nix
curl -L https://nixos.org/nix/install | sh

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages
sh .scripts/install_packages.sh

# remove zshrc put there by oh my zsh
rm ~/.zshrc

# stow folders
sh .scripts/link_folders.sh

# add zsh as a login shell
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER
zsh
