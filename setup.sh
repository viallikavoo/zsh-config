mkdir -p $HOME/Documents/Workspace/
cd $HOME/Documents/Workspace/
git clone https://github.com/dracula/terminal-app.git
git clone https://github.com/powerline/fonts.git
cd fonts && ./install.sh
cd $HOME/Documents/Workspace/
ssh-keygen -t rsa -b 4096 -C "vialli_kavoo@hotmail.com"
cd $HOME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/viallikavoo/zsh-config/master/tools/install.sh)"
cd .oh-my-zsh/tools
cd $HOME/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions
cd $HOME
git clone https://github.com/viallikavoo/zsh-config.git
mv zsh-config/zshrc .oh-my-zsh/
rm -rf .zshrc
rm -rf zsh-config
ln -s .oh-my-zsh/zshrc .zshrc
