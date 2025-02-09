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

# oh-my-zsh
echo Installing Oh-my-zsh...
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Brew install
echo Installing basic homebrew softwares...
brew install git zsh github

# apps
echo Installing desktop apps...
brew install --cask adobe-acrobat-reader zoom microsoft-edge microsoft-office microsoft-remote-desktop
# utils 
echo Installing utilities...
brew install --cask clipy the-unarchiver
# dev tools
echo Installing dev tools...
brew install --cask visual-studio-code
brew install zsh-autosuggestions zsh-syntax-highlighting
# Work

# default-writes
# echo Setting default-writes...
# sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/robertkruk/macbook-setup/main/default-writes.sh)"


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
mas install 1569813296 # 1password for safari
mas install 1440147259 # adguard for safari
mas install 441258766 # Magnet
mas install 497799835 # XCode
mas install 1319778037 # iStat menus
mas install 1475897096 # jira cloud

# AWS remote codecommit
# pip install git-remote-codecommit

# Brew install tap cask
brew tap homebrew/cask-versions
brew install --cask slack-beta
brew install --cask docker

# Hashicorp
brew tap hashicorp/tap
brew install hashicorp/tap/terraform-ls
brew install hashicorp/tap/packer

# AWS CDK
brew install aws-cdk
# or npm install -g aws-cdk 

# the following was from old M1 Mac
# Install all brew from old mac
brew install autoconf awscli brotli c-ares ca-certificates cairo curl cyberduck eslint fontconfig freetype fribidi gdbm gettext giflib git glib gmp gnutls gobject-introspection graphite2 groonga guile harfbuzz icu4c jemalloc jpeg jq libev libevent libexif libffi libidn2 libnghttp2 libpng libpthread-stubs libslirp libssh libssh2 libtasn1 libtiff libtool libunistring libusb libuv libx11 libxau libxcb libxdmcp libxext libxrender libyaml lzo m4 mariadb mas mecab mecab-ipadic mono-libgdiplus mpdecimal msgpack mysql-client mysql-client@5.7 ncurses nettle nghttp2 node oniguruma openldap openssl@1.1 openssl@3 p11-kit packer pango pcre pcre2 pixman pkg-config pyenv python@3.10 python@3.9 qemu rbenv readline rtmpdump ruby ruby-build six snappy sqlite telnet tflint tfsec thefuck typescript unbound vde xorgproto xz zlib zsh zsh-autosuggestions zsh-git-prompt zsh-syntax-highlighting zstd
brew install dotnet-sdk 1password-beta google-drive mysqlworkbench postico powershell royal-tsx safari-technology-preview session-manager-plugin webex-meetings teamviewer yt-music

# Nix-Shell (M1)
curl -L https://nixos.org/nix/install | sh -s -- --darwin-use-unencrypted-nix-store-volume

sudo mkdir /etc/nixsudo 
touch /etc/nix/nix.conf
sudo nano /etc/nix/nix.conf

# Vault Config

echo "Done"

# To upgrade all softwares installed by cask later, just run this below command:
# brew upgrade --cask --greedy
