set nu
set ruler
set expandtab
set tabstop=2
set shiftwidth=2
set hlsearch
set incsearch
set autoindent
set pastetoggle=<f5>
retab
syntax on
filetype on
filetype indent plugin on
highlight ColorColumn ctermbg=lightblue
set colorcolumn=80
"set textwidth=79
"extra options
hi vertsplit ctermfg=238 ctermbg=235
hi LineNr ctermfg=237
hi StatusLine ctermfg=235 ctermbg=245
hi StatusLineNC ctermfg=235 ctermbg=237
hi Search ctermbg=58 ctermfg=15
hi Default ctermfg=1
hi clear SignColumn
hi SignColumn ctermbg=235
hi GitGutterAdd ctermbg=235 ctermfg=245
hi GitGutterChange ctermbg=235 ctermfg=245
hi GitGutterDelete ctermbg=235 ctermfg=245
hi GitGutterChangeDelete ctermbg=235 ctermfg=245
hi EndOfBuffer ctermfg=237 ctermbg=235
set statusline=Line:\ %l\ Row:\ %c%=%P\ %f\ %m%y
set laststatus=2
set noshowmode
"return to the last position
if has("autocmd")
      au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
"pathogen
execute pathogen#infect()
colorscheme gruvbox
set background=dark
"indentguides
set ts=2 sw=2 et
let g:indent_guides_start_level = 1
let g:indent_guides_enable_on_vim_startup = 1
"lightline
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ }
"rainbow parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"listchars
"tab:▸\ 
"trail:·
"precedes:←
"extends:→
"eol:↲
"nbsp:␣
"space:␣
set listchars=tab:▸\ ,trail:·,precedes:←,extends:→,eol:↲,nbsp:␣,
set list
