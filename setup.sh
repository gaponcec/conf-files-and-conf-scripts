#!/bin/bash

mkdir -p ~/.vim/bundle/

cd ~/.vim/
git clone https://github.com/tpope/vim-pathogen.git
ln -s vim-pathogen/autoload

cd ~/.vim/bundle/

GIT_URL="https://github.com/"

bundles=( \
"vim-scripts/AutoComplPop" \
"morhetz/gruvbox.git" \
"itchyny/lightline.vim" \
"scrooloose/nerdtree" \
"kien/rainbow_parentheses.vim" \
"scrooloose/syntastic" \
"townk/vim-autoclose" \
"airblade/vim-gitgutter" \
"nathanaelkane/vim-indent-guides" \
"wesgibbs/vim-irblack.git" \
"therubymug/vim-pyte.git"
)

for i in $(seq 0 $((${#bundles[@]}-1)))
do
  git clone ${GIT_URL}${bundles[$i]}
done

cd ~
#tmux
git clone ${GIT_URL}gpakosz/.tmux.git
ln -s ~/.tmux/.tmux.conf
cp ~/.tmux/.tmux.conf.local ~
#bash-git-prompt
git clone https://github.com/magicmonty/bash-git-prompt.git
mv ~/bash-git-prompt ~/.bash-git-prompt
