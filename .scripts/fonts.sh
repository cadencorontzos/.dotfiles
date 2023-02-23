# Create the local fontconfig directory 
$ mkdir -p ~/.config/fontconfig/conf.d/

# Create a file in that directory for the Nix fonts
$ cat << EOF > ~/.config/fontconfig/conf.d/10-nix-fonts.conf
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>
 <dir>~/.nix-profile/share/fonts/</dir>
</fontconfig>
EOF

