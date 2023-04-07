```
[//]: # configure ubuntu linux from root
sudo useradd -m <username>
sudo passwd <username>
sudo usermod -aG sudo <username>

sudo apt install vim git zsh

[//]: # add "su - <username>" to .zshrc
exec zsh

ssh-keygen -t ed25519 -C <github e-mail>
[//]: # add key to Github Account

[//]: # install lsd
[lsd installation package](https://github.com/lsd-rs/lsd/releases/download/0.23.1/lsd_0.23.1_amd64.deb)
sudo dpkg -i lsd_0.23.1_amd64.deb

mkdir $HOME/Code
git clone git@github.com:chopingu/dotfiles.git $HOME/Code/dotfiles

chmod +x $HOME/Code/dotfiles/setup/install.zsh
$HOME/Code/dotfiles/setup/install.zsh
```

```
[//]: # Docker setup for ctf

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
     "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo apt-get install docker-compose
sudo gpasswd -a $USER docker
newgrp docker

[//]: # add the following to /etc/wsl.conf
[boot]
systemd=true

[//]: # in cmd if wsl and docker are still bugging
wsl --unregister Ubuntu-22.04
wsl --setdefault Ubuntu-22.04
```

```
[//]: # install nerd font for starship prompt
[Caskaydia Cove Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/CascadiaCode.zip)
```

```
[//]: # nightfly colorscheme to add in windows terminal json
{
    "name": "nightfly",
        "background": "#011627",
        "foreground": "#acb4c2",
        "cursorColor": "#9ca1aa",
        "selectionBackground": "#b2ceee",
        "black": "#1d3b53",
        "red": "#fc514e",
        "green": "#a1cd5e",
        "yellow": "#e3d18a",
        "blue": "#82aaff",
        "purple": "#c792ea",
        "cyan": "#7fdbca",
        "white": "#a1aab8",
        "brightBlack": "#7c8f8f",
        "brightRed": "#ff5874",
        "brightGreen": "#21c7a8",
        "brightYellow": "#ecc48d",
        "brightBlue": "#82aaff",
        "brightPurple": "#ae81ff",
        "brightCyan": "#7fdbca",
        "brightWhite": "#d6deeb"
}
```
