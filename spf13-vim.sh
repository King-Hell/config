# !/bin/sh
echo Set vim plugins YouCompleteMe and python
cp vim_bundles $HOME/.vimrc.before.local

echo Installing spf13-vim
sh spf13_install.sh

echo Install YouCompleteMe
python3 $HOME/.vim/bundle/YouCompleteMe/install.py
