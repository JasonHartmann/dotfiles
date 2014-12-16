cd ~
mv .bash_aliases .bash_aliases.bak
mv .bash_logout .bash_logout.bak
mv .bashrc .bashrc.bak
mv .gitconfig .gitconfig.bak
mv guake.sh guake.sh.bak
mv .profile .profile.bak

ln -s scripts/.bash_aliases .bash_aliases
ln -s scripts/.bash_logout  .bash_logout
ln -s scripts/.bashrc  .bashrc
ln -s scripts/.gitconfig  .gitconfig
ln -s scripts/guake.sh  guake.sh
ln -s scripts/.profile  .profile
