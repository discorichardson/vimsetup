# Git pull
git pull

# Copy my config files
cp .vimrc ~/.vimrc
cp -R .vim ~/.vim

# Reinstall latest Pathogen
git clone https://github.com/tpope/vim-pathogen.git
cp -R vim-pathogen/autoload ~/.vim/
rm -Rf vim-pathogen

# Update other plugins
cd ~/.vim/bundle/matchit
git pull
cd ~/.vim/bundle/vim-airline
git pull
cd ~/.vim/bundle/vim-airline-themes
git pull
cd ~/.vim/bundle/vim-autoclose
git pull
cd ~/.vim/bundle/vim-colors-solarized
git pull
cd ~/.vim/bundle/vim-indent-guides
git pull
cd ~/.vim/bundle/nerdtree
git pull
cd ~/.vim/bundle/vim-repeat
git pull
cd ~/.vim/bundle/vim-signature
git pull
cd ~/.vim/bundle/vim-surround
git pull
cd ~/.vim/bundle/tagbar
git pull
cd ~/.vim/bundle/vim-lastplace
git pull
cd ~/.vim/bundle/vim-sensible
git pull
