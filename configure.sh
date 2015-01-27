#
# Copy env files
#
rm -rf ~/.vim
cp -R vim ~/.vim
cp vim/.vimrc ~
cp vim/.gvimrc ~
cp .gitconfig ~
cp gitutils/git-completion.bash ~/.git-completion.bash
cp .profile ~
cp .rdebugrc ~/.rdebugrc
source ~/.profile
cp .tmux.conf ~
cp .rspec ~/.rspec

#
# Prepare bin
#
cp -R bin ~
chmod +x ~/bin/spark

ln -s ~/.profile ~/.bash_profile
ln -s ~/.vimrc ~/.nvimrc
ln -s ~/.vim ~/.nvim


mkdir -p ~/.lein
cp lein/profiles.clj ~/.lein/
