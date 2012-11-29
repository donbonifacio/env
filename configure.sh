rm -rf ~/.vim
cp -R vim ~/.vim
cp vim/.vimrc ~
cp vim/.gvimrc ~
cp .gitconfig ~
cp .profile ~
ln -s ~/.profile ~/.bash_profile
source ~/.profile
cp .tmux.conf ~
