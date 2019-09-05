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

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/viallikavoo/zsh-config/master/setup.sh)"
