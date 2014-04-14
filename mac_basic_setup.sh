# Install zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Bew installs:
brew install wget
brew install ctags-exuberant

# Some git configuration:
git config --global color.ui true
git config --global alias.ci commit
git config --global alias.st status
git config --global user.name "David Pilo"
git config --global user.email davidpilo@gmail.com

# Install all vim plugins:
./vim_setup.sh | sh

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

