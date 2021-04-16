" Enable a colorscheme
syntax enable
syntax on
filetype plugin on
set t_Co=256
set cursorline
colorscheme onehalfdark

" Add line numbers
set number

" Enable mouse support for all modes
set mouse=r

" Enable mouse scroll wheel
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Make tabs into spaces and change size
set expandtab
set tabstop=4
set shiftwidth=4

" Auto read a file when modified externally
set autoread

" Ignore those ugly files when searching
set wildignore=*.o,*~

" for indent-guides
let g:indent_guides_auto_colors = 0

" Set default file type to unix
set ffs=unix

" Show matching brackets
set showmatch

" Make search case insensitive and incrementing
set ignorecase
set smartcase
set incsearch

" Map T to insert / t to append a single character c and escape
nnoremap T i_<Esc>r
nnoremap t a_<Esc>r

" Auto indent
set cindent

" Make e and b move from whtsp to whtsp
noremap e E
noremap b B

" Go to eol and bol respectively
noremap E $
noremap B ^

" Enable cycling through a wrapped line
noremap j gj
noremap k gk

" Set scrolling offset to thirty lines
set so=30

" Enable linewrapping in vimdiff
autocmd FilterWritePre * if &diff | setlocal wrap< | endif

" Move */# to m/M because * is too weird to get used to
nnoremap m *
nnoremap M #

" Maybe I'll use this
inoremap kj <Esc>

" Jump back to previous line
noremap <CR> ``

" Toggle Folding
set foldmethod=manual
nnoremap z za
onoremap z <C-C>za
vnoremap z zf

" Use // to copy the visually selected text and search
vnoremap // y/<C-R>"<CR>

" Enable pathogen for easy management of bundles
execute pathogen#infect()
filetype plugin on

" Always show tabline
set showtabline=4
ca tn tabnew
ca tf tabfirst
ca tl tablast
ca tr tabp
ca ty tabn

" vim-airline stuff
set encoding=utf-8
set laststatus=2
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1

" unicode symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '◖'
" let g:airline_right_sep = '◥'
let g:airline_symbols = {}
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
