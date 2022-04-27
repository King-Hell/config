#/bin/bash
git clone git@github.com:chxuan/vimplus.git ~/.vimplus
cat ~/.vimplus/.vimrc | sed "/call plug#begin/i\let g:plug_url_format = 'git@github.com:%s.git'" | sed -r "s/(Plug 'chxuan\/.*')/\" \1/g" | sed -r "s/\" (Plug 'chxuan\/vimplus-startify')/\1/g" > ~/.vimplus/.vimrc.new
mv ~/.vimplus/.vimrc.new ~/.vimplus/.vimrc
cd ~/.vimplus
./install.sh
