#!/usr/bin/env sh
echo Installing Rosetta...
sudo softwareupdate --install-rosetta

echo Installing Homebrew...
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH=/opt/homebrew/bin:$PATH
brew update

# brew config for m1
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"


# Brew install
echo Installing basic homebrew softwares...
brew install git zsh github

# apps
echo Installing desktop apps...
brew install --cask adobe-acrobat-reader zoom microsoft-edge microsoft-office microsoft-teams microsoft-remote-desktop
# utils 
echo Installing utilities...
brew install --cask istat-menus clipy openvpn-connect the-unarchiver adguard
# dev tools
echo Installing dev tools...
brew install --cask visual-studio-code
brew install zsh-autosuggestions zsh-syntax-highlighting

# default-writes
# echo Setting default-writes...
# sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/robertkruk/macbook-setup/main/default-writes.sh)"

# oh-my-zsh
echo Installing Oh-my-zsh...
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Pyenv
# pyenv is a Open-Source Package Manager for python version control in a single system. Setting up python using pyenv in very easy and effective. This will not imapct system python version
brew update
brew install pyenv
#Although not required, the pyenv wiki recommends installing some additional libraries
brew install openssl readline sqlite3 xz zlib

# install latest as at May 2021
pyenv install 3.9.5
#set default
pyenv global 3.9.5         
# Finally check available version(s) with pyenv by pyenv versions

# Profile for bash and ZSH
# Add pyenv executable to PATH and
# enable shims by adding the following
# to ~/.profile and ~/.zprofile:

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init --path)"' >> ~/.profile
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zprofile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zprofile
echo 'eval "$(pyenv init --path)"' >> ~/.zprofile


echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc

brew doctor

#Updating App Store Application from command line -
brew install mas
mas upgrade 

echo "Done"

# To upgrade all softwares installed by cask later, just run this below command:
# brew upgrade --cask --greedy
