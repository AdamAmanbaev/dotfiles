#!/usr/bin/zsh

sudo apt-get update

git config --global user.email "adam.amanbaev@gmail.com"
git config --global user.name "Adam Amanbaev"

BASIC_PACKAGES=(git curl zsh)
echo "Installing basic packages ($BASIC_PACKAGES)"
sudo apt-get install -y $BASIC_PACKAGES

echo "Setting up neovim"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz

LATEX_PACKAGES=(latexmk texlive texlive-xetex texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra python3-pygments texlive-science)
echo "Installing latex packages ($LATEX_PACKAGES)"
sudo apt-get install -y $LATEX_PACKAGES

GENERAL_PACKAGES=(tmux htop)
echo "Installing general packages ($GENERAL_PACKAGES)"
sudo apt-get install -y $GENERAL_PACKAGES

echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
 
PROGRAMMING_PACKAGES=(g++ gcc python3 python3-pip gdb)
echo "Installing packages ($PROGRAMMING_PACKAGES)"
sudo apt-get install -y $PROGRAMMING_PACKAGES
sudo apt install python3.12-venv -y

echo "Setting up rust nightly"
curl https://sh.rustup.rs -sSf | sh -s -- -y

echo "Setting up deno"
curl -fsSL https://deno.land/install.sh | sh -s -- -y

echo "Installing lsd"
wget https://github.com/lsd-rs/lsd/releases/download/0.23.1/lsd_0.23.1_amd64.deb
sudo dpkg -i lsd_0.23.1_amd64.deb
rm lsd_0.23.1_amd64.deb

echo "Setting up docker"
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
     "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo apt-get install -y docker-compose
sudo gpasswd -a $USER docker

echo "Setting up ripgrep"
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.0-1_amd64.deb
sudo dpkg -i ripgrep_14.1.0-1_amd64.deb
rm ripgrep_14.1.0-1_amd64.deb

echo "Tree-sitter CLI"
npm install -g tree-sitter-cli

echo "Setting up miniconda3"
mkdir -p ~/.miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/.miniconda3/miniconda.sh
bash ~/.miniconda3/miniconda.sh -b -u -p ~/.miniconda3
rm -rf ~/.miniconda3/miniconda.sh


