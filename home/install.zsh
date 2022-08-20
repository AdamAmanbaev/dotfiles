mkdir -p $HOME/Code
mkdir -p $HOME/Code/bin
mkdir -p $HOME/Code/tmp

if cd $HOME/Code/dotfiles
then
    git pull origin master
else
    git clone git@github.com:AdamAmanbaev/dotfiles.git $HOME/Code/dotfiles
fi

git config --global user.email "adam.amanbaev@gmail.com"
git config --global user.name "Adam Amanbaev"
