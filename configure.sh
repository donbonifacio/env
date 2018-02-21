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

#
# Lein
#
mkdir -p ~/.lein
cp lein/profiles.clj ~/.lein/

source ~/.profile

xcode-select --install

defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
