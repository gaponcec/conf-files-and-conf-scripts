#!/bin/bash
set -x
dir="${HOME}/.tmux ${HOME}/.vim/vim-pathogen \
    ${HOME}/.iterm2/iTerm2-Color-Schemes"
bundles=$(find ~/.vim/bundle -depth 1 -type d)
brew update
brew upgrade
#pip list --format=columns|awk '{if(NR > 2)print $1}'|xargs pip install --upgrade
#pip3 list --format=columns|awk '{if(NR > 2)print $1}'|xargs pip3 install --upgrade
for i in ${dir} ${bundles}
do
    cd ${i}
    git fetch
    git pull
    cd -
done
#npm install npm@latest -g
