call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-scripts/vis'
Plug 'terryma/vim-smooth-scroll'
call plug#end()


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