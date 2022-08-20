## dotfiles

```
sudo apt install vim git zsh
sudo usermod -aG sudo <username>

" add "su - <username>" to .bashrc
" new tab

mkdir $HOME/Code
git clone https://github.com/AdamAmanbaev/dotfiles.git $HOME/Code/dotfiles

chmod +x $HOME/Code/dotfiles/setup/install.zsh
$HOME/Code/dotfiles/setup/install.zsh
```
