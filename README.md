## dotfiles

```
sudo apt install vim git zsh
sudo usermod -aG sudo <username>

" add "su - <username>" to .bashrc
" new tab

ssh-keygen -t ed25519 -C <github e-mail>
" add key to Github Account

mkdir $HOME/Code
git clone git@github.com:AdamAmanbaev/dotfiles.git $HOME/Code/dotfiles

chmod +x $HOME/Code/dotfiles/setup/install.zsh
$HOME/Code/dotfiles/setup/install.zsh

chmod +x $HOME/Code/dotfiles/zsh/build.zsh
chmod +x $HOME/Code/dotfiles/zsh/validate.zsh
chmod +x $HOME/Code/dotfiles/zsh/stress.zsh

" change neofetch .config
```
