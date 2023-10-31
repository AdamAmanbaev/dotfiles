#!/usr/bin/zsh

sudo apt-get update

git config --global user.email "adam.amanbaev@gmail.com"
git config --global user.name "Adam Amanbaev"

BASIC_PACKAGES=(vim git curl zsh)
echo "Installing basic packages ($BASIC_PACKAGES)"
sudo apt-get install -y $BASIC_PACKAGES

LATEX_PACKAGES=(latexmk texlive texlive-xetex texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra python3-pygments)
echo "Installing latex packages ($LATEX_PACKAGES)"
sudo apt-get install -y $LATEX_PACKAGES

GENERAL_PACKAGES=(fzf tmux)
echo "Installing general packages ($GENERAL_PACKAGES)"
sudo apt-get install -y $GENERAL_PACKAGES
 
PROGRAMMING_PACKAGES=(g++ gcc python3 python3-pip gdb)
echo "Installing packages ($PROGRAMMING_PACKAGES)"
sudo apt-get install -y $PROGRAMMING_PACKAGES

echo "Building latest version of ltrace"
sudo apt-get -y install git autoconf libelf-dev libtool
sudo rm -rf /tmp/ltrace
git clone https://gitlab.com/cespedes/ltrace.git /tmp/ltrace
cd /tmp/ltrace && ./autogen.sh && ./configure && 
sudo make
sudo make install
cd $HOME

echo "Installing gef for gdb"
bash -c "$(curl -fsSL https://gef.blah.cat/sh)"

echo "Installing lsd"
wget https://github.com/lsd-rs/lsd/releases/download/0.23.1/lsd_0.23.1_amd64.deb
sudo dpkg -i lsd_0.23.1_amd64.deb
rm lsd_0.23.1_amd64.deb

echo "Setting up vim markdown live preview"
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt-get update
sudo apt-get install nodejs -y

sudo npm install --global yarn
sudo ln -s /mnt/c/Program\ Files/Mozilla\ Firefox/firefox.exe /usr/bin/firefox

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
