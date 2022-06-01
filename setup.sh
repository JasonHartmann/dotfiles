cd ~
mv .bash_aliases .bash_aliases.bak
mv .bash_history .bash_history.bak
mv .bash_logout .bash_logout.bak
mv .bashrc .bashrc.bak
mv .gitconfig .gitconfig.bak
mv guake.sh guake.sh.bak
mv .profile .profile.bak

ln -s dotfiles/.bash_aliases .bash_aliases
ln -s dotfiles/.bash_history .bash_history
ln -s dotfiles/.bash_logout  .bash_logout
ln -s dotfiles/.bashrc  .bashrc
ln -s dotfiles/.gitconfig  .gitconfig
ln -s dotfiles/guake.sh  guake.sh
ln -s dotfiles/.profile  .profile
