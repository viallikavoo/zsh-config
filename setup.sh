mkdir -p $HOME/Documents/Workspace/
cd $HOME/Documents/Workspace/
git clone https://github.com/dracula/terminal-app.git
git clone https://github.com/powerline/fonts.git
cd fonts && ./install.sh
cd $HOME
git clone https://github.com/viallikavoo/zsh-config.git
cd .oh-my-zsh/tools
cd $HOME/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions
cd $HOME/Documents/Workspace/
ssh-keygen -t rsa -b 4096 -C "vialli_kavoo@hotmail.com"
cd $HOME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mv zsh-config/zshrc .oh-my-zsh/zshrc
rm -rf .zshrc
rm -rf zsh-config
ln -s .oh-my-zsh/zshrc .zshrc
