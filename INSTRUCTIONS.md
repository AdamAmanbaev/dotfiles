```
[//]: # configure ubuntu linux from root
sudo useradd -m <username>
sudo passwd <username>
sudo usermod -aG sudo <username>

sudo apt install vim git zsh -y

[//]: # add "su - <username>" to .bashrc
exec sh

ssh-keygen -t ed25519 -C <github e-mail>
[//]: # add key to github account

mkdir $HOME/Code
git clone git@github.com:chopingu/dotfiles.git $HOME/Code/dotfiles

chmod +x $HOME/Code/dotfiles/setup/install.zsh
$HOME/Code/dotfiles/setup/install.zsh

chsh -s $(which zsh)
```
