# !/bin/bash
echo Installing oh-my-zsh
#wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
bash omz_install.sh

echo Installing zsh-autosuggestions
git clone git@github.com:zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo Installing zsh-syntax-highlighting
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo Configuring .zshrc
sed -E -i 's/^plugins=\((.*)\)/plugins=\(\1 extract zsh-autosuggestions zsh-syntax-highlighting\)/g' ${HOME}/.zshrc
source ${HOME}/.zshrc

echo All complete
