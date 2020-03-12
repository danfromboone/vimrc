call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-scripts/vis'
Plug 'terryma/vim-smooth-scroll'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
call plug#end()

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set number

" run bc (do math) against current line
map <SPACE>bc :.w !bc -l<ENTER>

" git stuff
"
command GitAdd w | !git add %
command GitCommit !git commit
command GitPush !git push
command GitPull !git pull

map <SPACE>ga :!git add %<ENTER>
map <Space>gacp :w \| !git add % && git commit % && git push<CR>
map <Space>gd :!git diff %<CR>
map <Space>gp :!git push<CR>
map <Space>gc :w \| !git add % && git commit %<CR>

map <SPACE>sum :w !dfb-sum<ENTER>

set incsearch

" vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 20, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 20, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 4)<CR>

" format json
command -range JsonFormat <line1>,<line2>! jq .


