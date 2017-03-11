@echo off
REM Delete any old configuration
del "%USERPROFILE%\_vimrc"
del "%USERPROFILE%\_gvimrc"
rmdir "%USERPROFILE%\vimfiles" /S /Q

Copy my config files
copy .vimrc "%USERPROFILE%\_vimrc"
xcopy .vim "%USERPROFILE%\vimfiles" /E /I

REM Install Pathogen
git clone https://github.com/tpope/vim-pathogen.git
xcopy vim-pathogen\autoload "%USERPROFILE%\vimfiles\autoload" /E /I
rmdir vim-pathogen /S /Q

REM Install other plugins
mkdir "%USERPROFILE%\vimfiles\bundle"
git clone https://github.com/tmhedberg/matchit.git "%USERPROFILE%\vimfiles\bundle\matchit"
git clone https://github.com/vim-airline/vim-airline.git "%USERPROFILE%\vimfiles\bundle\vim-airline"
git clone https://github.com/vim-airline/vim-airline-themes.git "%USERPROFILE%\vimfiles\bundle\vim-airline-themes"
git clone https://github.com/Townk/vim-autoclose.git "%USERPROFILE%\vimfiles\bundle\vim-autoclose"
git clone https://github.com/altercation/vim-colors-solarized.git "%USERPROFILE%\vimfiles\bundle\vim-colors-solarized"
git clone https://github.com/nathanaelkane/vim-indent-guides.git "%USERPROFILE%\vimfiles\bundle\vim-indent-guides"
git clone https://github.com/scrooloose/nerdtree.git "%USERPROFILE%\vimfiles\bundle\nerdtree"
git clone https://github.com/tpope/vim-repeat.git "%USERPROFILE%\vimfiles\bundle\vim-repeat"
git clone https://github.com/kshenoy/vim-signature.git "%USERPROFILE%\vimfiles\bundle\vim-signature"
git clone https://github.com/tpope/vim-surround.git "%USERPROFILE%\vimfiles\bundle\vim-surround"
git clone https://github.com/majutsushi/tagbar.git "%USERPROFILE%\vimfiles\bundle\tagbar"
git clone https://github.com/dietsche/vim-lastplace.git "%USERPROFILE%\vimfiles\bundle\vim-lastplace"
git clone https://github.com/tpope/vim-sensible.git "%USERPROFILE%\vimfiles\bundle\vim-sensible"
git clone https://github.com/tpope/vim-obsession.git "%USERPROFILE%\vimfiles\bundle\vim-obsession"
