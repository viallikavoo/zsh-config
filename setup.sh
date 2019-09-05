mkdir -p $HOME/Documents/Workspace/
cd $HOME/Documents/Workspace/
git clone https://github.com/dracula/terminal-app.git
git clone https://github.com/powerline/fonts.git
cd fonts && ./install.sh
cd $HOME/Documents/Workspace/
HOSTNAME=`hostname` ssh-keygen -t rsa -C "$HOSTNAME" -f "$HOME/Documents/Workspace/github" -P "" && cat $HOME/Documents/Workspace/github.pub
cd $HOME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/viallikavoo/zsh-config/master/install.sh)" "" --unattended
cd .oh-my-zsh/tools
cd $HOME/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions
cd $HOME
git clone https://github.com/viallikavoo/zsh-config.git
mv zsh-config/zshrc .oh-my-zsh/
rm -rf .zshrc
rm -rf zsh-config
ln -s .oh-my-zsh/zshrc .zshrc
git clone git@github.com:viallikavoo/.vim.git
rm .vimrc
ln -s .vim/vimrc .vimrc

URL_BREW='https://raw.githubusercontent.com/Homebrew/install/master/install'

echo -n '- Installing brew ... '
echo | /usr/bin/ruby -e "$(curl -fsSL $URL_BREW)" > /dev/null
if [ $? -eq 0 ]; then echo 'OK'; else echo 'NG'; fi

#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install jq
brew install awscli
brew cask install slack
brew cask install atom
brew cask install java
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock &&
defaults write com.apple.dock expose-animation-duration -float 0.12 && killall Dock &&
defaults write com.apple.Dock showhidden -bool YES && killall Dock &&
defaults write com.apple.finder QLEnableTextSelection -bool TRUE && killall Finder &&
defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder &&
open ~/Documents/Workspace/terminal-app/Dracula.terminal &&
defaults write com.apple.terminal "Default Window Settings" "Dracula" &&
defaults write com.apple.terminal "Startup Window Settings" "Dracula" &&
chflags nohidden ~/Library/ &&

sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName 

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/viallikavoo/zsh-config/master/setup.sh)"
