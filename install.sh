#!/bin/bash

if [ "$#" -ne 2 ];then
  echo "2 arguments mon gars ! install.sh NOM MAIL"
fi

# add repo
sudo apt-add-repository ppa:git-core/ppa
sudo add-apt-repository ppa:neovim-ppa/unstable

# yum
sudo apt update
sudo apt install python-dev python-pip python3-dev python3-pip software-properties-common neovim -y
sudo pip2 install neovim --upgrade
sudo pip3 install neovim --upgrade

# gem
gem install neovim

# move config
ln -s ./init.vim ~/.config/nvim/

# add vim plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# fonts
echo "install fonts"
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh

# snip ansible
echo "install snip ansible"
cd ~/.vim/plugged/ansible-vim/UltiSnips/
python generate.py

# sed
sed -re "s/NAME_INSTALL/$1/g" -i ./init.vim

echo "Lancer nvim et faire:"
echo ":PlugInstall"
echo ":UpdateRemotePlugins"
