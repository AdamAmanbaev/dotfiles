for repository in $REPOS
do 
    if cd $HOME/Code/$repository
        then 
            git pull origin
        else 
            git clone git@github.com:AdamAmanbaev/$repository $HOME/Code/$repository
    fi
done 
