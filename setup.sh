sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y git-core
sudo apt-get install screen

# Install pathogen.vim
cd $HOME
mkdir .vim
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Install vim nerdtree
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

# Install vim multiple curlsors plugin
cd ~/.vim/bundle
git clone https://github.com/terryma/vim-multiple-cursors.git

# Install fugitive plugin 
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-fugitive.git

# Install autocompletepop and L9 vim plugins
cd $HOME
wget https://bitbucket.org/ns9tks/vim-autocomplpop/get/tip.zip
unzip tip.zip -d tip
cd tip
cd *auto*
cp -R * ~/.vim/
cd $HOME
rm -R tip/
rm tip.zip
cd $HOME
wget https://bitbucket.org/ns9tks/vim-l9/get/tip.zip
unzip tip.zip -d tip
cd tip
cd *l9*
cp -R * ~/.vim/
cd $HOME
rm -R tip/
rm tip.zip

#cd ~/.vim
#git clone https://github.com/tomasr/molokai.git 
#mkdir colors
#cp molokai/colors/molokai.vim colors/
#rm -rf molokai/

#slime for copy paste to another screen 
cd ~/.vim/bundle
git clone git://github.com/jpalardy/vim-slime.git

# Install vim snipmate plugin
cd ~
mkdir snipmatetemp
cd snipmatetemp
git clone git://github.com/msanders/snipmate.vim.git
cd snipmate.vim
cp -R * ~/.vim
cd ~
rm -rf snipmatetemp

##############################
# DOTFILES 
##############################
cd $HOME
if [ -d ./dotfiles/ ]; then
  mv dotfiles dotfiles.old
fi
git clone https://github.com/davidpilo/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.vimrc
ln -sb dotfiles/.bashrc_custom .

