# Downloads needed packages
sudo pacman -S kitty dmenu git neovim xorg xsel xclip ttf-jetbrains-mono --noconfirm
cd ~
mkdir tmp_repos
cd tmp_repos
git clone https://github.com/akisarazbu/kitty
git clone https://github.com/akisarazbu/dwm
git clone https://github.com/akisarazbu/nvim
cd nvim
chmod +x .vimplug.sh && ./.vimplug.sh
cd ..
cd dwm
sudo make clean install
cd ..
mkdir ~/.config
mv dwm ~/.config && mv kitty ~/.config && mv nvim ~/.config
rm -rf ~/tmp_repos
echo "Done"
