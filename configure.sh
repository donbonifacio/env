#
# Copy env files
#
cp .profile ~
ln -s ~/.profile ~/.bash_profile

cp .rdebugrc ~/.rdebugrc
cp .tmux.conf ~
cp .rspec ~/.rspec

#
# Git
#
cp .gitconfig ~
cp .git-commit-template ~
cp gitutils/git-completion.bash ~/.git-completion.bash

#
# Prepare bin
#
cp -R bin ~

#
# Vim
#
rm -rf ~/.vim
cp -R vim ~/.vim
cp vim/.vimrc ~
cp vim/.gvimrc ~

curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
mv nvim-macos.tar.gz ~/bin/nvim-macos.tar.gz
tar xzf ~/bin/nvim-macos.tar.gz -C ~/bin
mkdir -p ~/.config/nvim
cp ./vim/nvim-init ~/.config/nvim/init.vim

ln -s ~/.vimrc ~/.nvimrc
ln -s ~/.vim ~/.nvim
rm -rf ~/.vim/bundle/ale
git clone https://github.com/w0rp/ale.git ~/.vim/bundle/ale

#
# Lein
#
mkdir -p ~/.lein
cp lein/profiles.clj ~/.lein/

source ~/.profile
