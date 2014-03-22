# Install zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Bew installs:
brew install wget

# Some git configuration:
git config --global color.ui true
git config --global alias.ci commit
git config --global alias.st status
git config --global user.name "David Pilo"
git config --global user.email davidpilo@gmail.com


# Install pathogen.vim
cd $HOME
mkdir .vim
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Install vim plugin
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-surround.git

# Install vim nerdtree
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

# Install matchit plugin
cd ~/.vim/bundle
mkdir matchit
cd matchit
wget http://www.vim.org/scripts/download_script.php?src_id=8196 -O matchitzip
unzip matchitzip
rm matchitzip

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

# Install solarized color scheme for vim
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

#slime for copy paste to another screen 
cd ~/.vim/bundle
git clone git://github.com/jpalardy/vim-slime.git

# Install vim ultisnips plugin
cd ~/.vim/bundle/
git clone https://github.com/SirVer/ultisnips.git
git clone https://github.com/honza/vim-snippets.git
echo -e "snippet php \"php\"\n<?php \${1} ?>\nendsnippet\n" >> ~/.vim/bundle/vim-snippets/UltiSnips/php.snippets # Add missing basic insert php snippet
echo "extends html" >> ~/.vim/bundle/vim-snippets/UltiSnips/php.snippets #add html snippets to php files

##############################
# DOTFILES 
##############################
cd $HOME
if [ -d ./dotfiles/ ]; then
  mv dotfiles dotfiles.old
fi
git clone https://github.com/davidpilo/dotfiles.git
ln -s dotfiles/.screenrc .
ln -s dotfiles/.bash_profile .
ln -s dotfiles/.bashrc .
ln -s dotfiles/.vimrc
ln -s dotfiles/.bashrc_custom .

