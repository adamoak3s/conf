mkdir ~/.conf
cp .aliases ~/.conf
cp .suse_aliases ~/.conf
cp .vimrc ~/.conf
cp bookmarks ~/.conf

echo "source ~/.conf/.aliases" >> ~/.bashrc
sudo echo "source ~/.conf/.vimrc" >> /etc/vimrc
