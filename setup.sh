sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y tmux
sudo apt-get install -y git-core
sudo apt-get install -y screen
sudo apt-get install -y curl
sudo apt-get install -y unzip
sudo apt-get install -y exuberant-ctags


# Install zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Some git configuration:
git config --global color.ui true
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.mg merge --no-ff
git config --global alias.st status
git config --global user.name "David Pilo"
git config --global user.email davidpilo@gmail.com

# Install all vim plugins:
sudo chmod +x ./vim_setup.sh
./vim_setup.sh


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

