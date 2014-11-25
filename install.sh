#! /bin/bash
#encoding: utf-8
#echo INSTALLING COMMAND LINE TOOLS
#xcode-select --install


#
# Homebrew
#

echo -e "\033[00;32mInstalling Homebrew, a good OS X package manager ... \033[0m"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo -en "\n"

echo -e "\033[00;32mTelling Homebrew to use programs installed in /usr/local/bin...\033[0m"
echo "'export PATH="/usr/local/bin:\$PATH"' >> ~/.bash_profile"
echo 'export PATH="/usr/local/bin:\$PATH"' >> ~/.bash_profile
echo -en "\n"

echo -e "\033[00;32mMaking sure Homebrew works fine\033[0m"
  brew doctor
echo -en "\n"

echo -e "\033[00;32mUpdating Homebrew's directory of formulae...\033[0m"
  brew update
echo -en "\n"

echo -e "\033[00;32mSetting up GIT. A version control system...\033[0m"
  brew install git
echo -en "\n"

echo -e "\033[00;32mSetting up mysql...\033[0m"
  brew install mysql
echo -en "\n"

echo -e "\033[00;32mInstalling Pyton again to include PIP & DISTRIBUTE...\033[0m"
  brew install python
echo -en "\n"

echo -e "\033[00;32mInstalling Virtual Environment\033[0m"
  pip install virtualenv
echo -en "\n"

echo -e "\033[00;32mInsatalling CASK Room... \033[0m"
  brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
  brew install caskroom/cask/brew-cask
echo -en "\n"

echo -e "\033[00;32mInsatalling iTerm2... \033[0m"
  brew cask install iterm2
echo -en "\n"

echo -e "\033[00;32mInsatalling MacVim... \033[0m"
  brew cask install macvim
echo -en "\n"

echo -e "\033[00;32mInstalling Windows Tiling Manager Amethyst... \033[0m"
  brew cast install amethyst
echo -en "\n"

echo -e "\033[00;32mSetting up vim config... \033[0m"
  git clone https://github.com/aadesh/vimconfig.git ~/.vim
  cd ~/.vim
  ./install.sh
echo -en "\n"
