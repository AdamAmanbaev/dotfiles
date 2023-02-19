sudo apt-get update

if want_basic
then
    BASIC_PACKAGES=(vim git curl)
    echo "Installing basic packages ($BASIC_PACKAGES)"
    sudo apt-get install -y $BASIC_PACKAGES
fi
 
if want_dev
then
    DEV_PACKAGES=(g++ gcc cmake python3 python3-pip fzf tmux neofetch lolcat texlive texlive-xetex latexmk texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra)
    echo "Installing dev packages ($DEV_PACKAGES)"
    sudo apt-get install -y $DEV_PACKAGES
fi
