```
sudo apt install vim git zsh
sudo usermod -aG sudo <username>

" add "su - <username>" to .bashrc
" new tab

ssh-keygen -t ed25519 -C <github e-mail>
" add key to Github Account

mkdir $HOME/Code
git clone git@github.com:chopingu/dotfiles.git $HOME/Code/dotfiles

chmod +x $HOME/Code/dotfiles/setup/install.zsh
$HOME/Code/dotfiles/setup/install.zsh

" run :PlugInstall
" change neofetch config
```

```
{
    "name": "Iceberg",
        "foreground": "#c6c8d1",
        "background": "#161821",
        "black": "#161821",
        "red": "#e27878",
        "green": "#b4be82",
        "yellow": "#e2a478",
        "blue": "#84a0c6",
        "purple": "#a093c7",
        "cyan": "#89b8c2",
        "white": "#c6c8d1",
        "brightBlack": "#6b7089",
        "brightRed": "#e98989",
        "brightGreen": "#c0ca8e",
        "brightYellow": "#e9b189",
        "brightBlue": "#91acd1",
        "brightPurple": "#ada0d3",
        "brightCyan": "#95c4ce",
        "brightWhite": "#d2d4de"
}
```
