#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="vimrc"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done


echo "Creating vim directories (swap, backups, etc)"
mkdir -p ~/dotfiles/vim/backups
mkdir -p ~/dotfiles/vim/swaps
mkdir -p ~/dotfiles/vim/undo
mkdir -p ~/dotfiles/vim/bundle
echo "Installing vim plugins"
git clone https://github.com/gmarik/Vundle.vim.git ~/dotfiles/vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "Installing YCM for vim's YouCompleteMe autocomplete plugin "
~/dotfiles/vim/bundle/YouCompleteMe/install.sh
# linking vim to ./vim in the home directory
ln -s $dir/vim ~/.vim
