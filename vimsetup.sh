# Delete any old configuration
rm ~/.vimrc
rm ~/.gvimrc
rm -Rf ~/.vim

# Copy my config files
cp .vimrc ~/.vimrc
cp -R .vim ~/.vim

# Install Pathogen
git clone https://github.com/tpope/vim-pathogen.git
cp -R vim-pathogen/autoload ~/.vim/
rm -Rf vim-pathogen

# Install other plugins
mkdir ~/.vim/bundle
git clone https://github.com/tmhedberg/matchit.git ~/.vim/bundle/matchit
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes.git ~/.vim/bundle/vim-airline-themes
git clone https://github.com/Townk/vim-autoclose.git ~/.vim/bundle/vim-autoclose
git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
git clone https://github.com/nathanaelkane/vim-indent-guides.git ~/.vim/bundle/vim-indent-guides
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/tpope/vim-repeat.git ~/.vim/bundle/vim-repeat
git clone https://github.com/kshenoy/vim-signature.git ~/.vim/bundle/vim-signature
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
git clone https://github.com/dietsche/vim-lastplace.git ~/.vim/bundle/vim-lastplace
git clone https://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
git clone https://github.com/tpope/vim-obsession.git ~/.vim/bundle/vim-obsession
