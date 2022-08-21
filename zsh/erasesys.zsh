while true; do
    read -p "Do you wish to erase system and user [Y/n]? " yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

sudo rm -rf /home/$USER
sudo userdel $USER
