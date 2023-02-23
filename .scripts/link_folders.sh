# stow all our dotfiles
for folder in */; do 
	stow $folder
done
