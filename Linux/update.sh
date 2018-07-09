#!/bin/bash
set -x
dir="${HOME}/.tmux ${HOME}/.vim/vim-pathogen \
    ${HOME}/.bash-git-prompt"
bundles=$(find ~/.vim/bundle -maxdepth 1 -type d|tail -n +2)
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
