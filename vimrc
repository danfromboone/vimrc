call plug#begin('~/.vim/plugged')

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Plug 'terryma/vim-smooth-scroll'

Plug 'sheerun/vim-polyglot'
Plug 'kien/ctrlp.vim'

" see git changes in the gutter
Plug 'airblade/vim-gitgutter'


Plug 'easymotion/vim-easymotion'
" \\ is the default leader key
" press \\w to jump to word


Plug 'elzr/vim-json'

" these are in ideavim
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

call plug#end()


" set fdm=syntax
"set fdm=indent
"set foldlevel=1
"set foldcolumn=8

" display line numbers on left, in gray
set number
highlight LineNr ctermfg=250 ctermbg=235


set nocompatible

" turn on ruler
set ruler

set autowrite

"display horizontal underline when in Insert mode 
autocmd InsertEnter * set cul

" nounderline when not in insert mode
autocmd InsertLeave * set nocul

" use spaces instead of tabs
set expandtab

" set tab to 4 spaces
set tabstop=2
set shiftwidth=2
       
" see commands in normal mode in status bar
set showcmd

"see menu for command completion
set wildmenu

" see matching braces
set showmatch

" highlist search results
set hlsearch

" incrementally search
set incsearch

" always show filename
set laststatus=2


"  camel-case command
command! -range CamelCase <line1>,<line2>s/_\(\w\)/\u\1/g

" Trim whitespace from EOL
command! -range TrimEnd <line1>,<line2>s/\s*$//

" Json Format Lines
command! -range JsonFormat <line1>,<line2>! jq .
command! -range JsonMinify <line1>,<line2>! jq -c .

" Join
command! -range Join <line1>,<line2>s/\n/<f-args>/

"remove duplicate blank lines
command! RemoveDuplicateBlankLines %!cat -s

"next tab
nmap tt gt
nmap <space>t gt
"previous tab
nmap TT gT
nmap <space>T gT
"next window
nmap <space>w <c-w><c-w>

"resource vimrc
nmap <space>r :source ~/.vimrc

nmap <space>u :let @a = 
nmap <space>u ':let @u = system("uuidgen \| tr -d \'\n\'") \| normal "ap'
nmap <space>u :let @u = system("uuidgen") \| normal "ap<enter>

call plug#begin('~/.vim/plugged')

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Plug 'terryma/vim-smooth-scroll'

Plug 'sheerun/vim-polyglot'
Plug 'kien/ctrlp.vim'

" see git changes in the gutter
Plug 'airblade/vim-gitgutter'


Plug 'easymotion/vim-easymotion'
" \\ is the default leader key
" press \\w to jump to word


Plug 'elzr/vim-json'

" these are in ideavim
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

call plug#end()



" display line numbers on left, in gray
set number
highlight LineNr ctermfg=250 ctermbg=235


set nocompatible

" turn on ruler
set ruler

set autowrite

"display horizontal underline when in Insert mode 
autocmd InsertEnter * set cul

" nounderline when not in insert mode
autocmd InsertLeave * set nocul

" use spaces instead of tabs
set expandtab

" set tab to 4 spaces
set tabstop=2
set shiftwidth=2
       
" see commands in normal mode in status bar
set showcmd

"see menu for command completion
set wildmenu

" see matching braces
set showmatch

" highlist search results
set hlsearch

" incrementally search
set incsearch

" always show filename
set laststatus=2


"  camel-case command
command! -range CamelCase <line1>,<line2>s/_\(\w\)/\u\1/g

" Trim whitespace from EOL
command! -range TrimEnd <line1>,<line2>s/\s*$//

" Json Format Lines
command! -range JsonFormat <line1>,<line2>! jq .

" Join
command! -range Join <line1>,<line2>s/\n/<f-args>/

"remove duplicate blank lines
command! RemoveDuplicateBlankLines %!cat -s

"next tab
nmap tt gt
nmap <space>t gt
"previous tab
nmap TT gT
nmap <space>T gT
"next window
nmap <space>w <c-w><c-w>

"next buffer
nmap <space>b :bn<cr>

"previous buffer
nmap <space>B :bp<cr>

"resource vimrc
nmap <space>r :source ~/.vimrc<CR>

"F12 to generate uuid in insert mode
map! <F12> <C-R>=system('uuidgen \| tr -d "\n" ')<CR>

"<space>u to generate uuid in normal mode
nmap <space>u a<F12><esc>

"create mock if cursor is on a className
nmap <space>M yiwPa<space>mock<esc>ea = new Mock()


" previous char- like find but singel key
nmap <space>{ :/{<cr> 
nmap <space>} :/}<cr> 

:set scrolloff=5


" system command against register
":call system("column -t", getreg("@n"))

" system command to line
":put =system("column -t", getreg("@n"))

" system call to register
":let @a=system('ls') 

"colorscheme default
"colorscheme mavcim
colorscheme evening
