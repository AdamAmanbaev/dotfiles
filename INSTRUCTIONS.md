```
[//]: # configure ubuntu linux from root
sudo useradd -m <username>
sudo passwd <username>
sudo usermod -aG sudo <username>

sudo apt install vim git zsh -y

[//]: # add "su - <username>" to .zshrc
exec zsh

ssh-keygen -t ed25519 -C <github e-mail>
[//]: # add key to github account

mkdir $HOME/Code
git clone git@github.com:chopingu/dotfiles.git $HOME/Code/dotfiles

chmod +x $HOME/Code/dotfiles/setup/install.zsh
$HOME/Code/dotfiles/setup/install.zsh

chsh -s $(which zsh)
```

```
[//]: # install nerd font
[DejaVuSansM Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/DejaVuSansMono.zip)
```

```
[//]: # iceberg-light colorscheme to add in windows terminal json
{
    "name": "iceberg-light",
    "black": "#dcdfe7",
    "red": "#cc517a",
    "green": "#668e3d",
    "yellow": "#c57339",
    "blue": "#2d539e",
    "purple": "#7759b4",
    "cyan": "#3f83a6",
    "white": "#33374c",
    "brightBlack": "#8389a3",
    "brightRed": "#cc3768",
    "brightGreen": "#598030",
    "brightYellow": "#b6662d",
    "brightBlue": "#22478e",
    "brightPurple": "#6845ad",
    "brightCyan": "#327698",
    "brightWhite": "#262a3f",
    "background": "#e8e9ec",
    "foreground": "#33374c",
    "selectionBackground": "#33374c",
    "cursorColor": "#33374c"
}
```
