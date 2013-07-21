sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y git-core
sudo apt-get install screen
cd; mkdir .vim
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
cd ~/.vim
git clone https://github.com/tomasr/molokai.git 
mkdir colors
cp molokai/colors/molokai.vim colors/
rm -rf molokai/
cd ~/.vim/bundle
git clone git://github.com/jpalardy/vim-slime.git
cd ~
mkdir snipmatetemp
cd snipmatetemp
git clone git://github.com/msanders/snipmate.vim.git
cd snipmate.vim
cp -R * ~/.vim
cd ~
rm -rf snipmatetemp

# git pull and install dotfiles as well
cd $HOME
if [ -d ./dotfiles/ ]; then
  mv dotfiles dotfiles.old
fi
if [ -d .emacs.d/ ]; then
  mv .emacs.d .emacs.d~
fi
git clone https://github.com/davidpilo/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
