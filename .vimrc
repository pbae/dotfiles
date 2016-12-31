set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on

let mapleader=","

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
"set background=dark
:colorscheme desert256
set number
set numberwidth=1
set mouse=a
set ignorecase
set smartcase
set hlsearch
set incsearch
set nobackup
set nowritebackup
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set history=1000
set undolevels=1000
"set visualbell
set cursorline
set whichwrap+=<,>,h,l,[,]
set clipboard^=unnamed
set iskeyword-=_
set title

map <C-n> :NERDTreeToggle<CR>
let g:NERDSpaceDelims = 1

hi MatchParen ctermbg=55

inoremap jk <Esc>
nnoremap j gj
nnoremap k gk
nnoremap ; :

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

let g:slime_target="tmux"
xmap <c-k><c-k> <Plug>SlimeRegionSend
nmap <c-k><c-k> <Plug>SlimeParagraphSend
nmap <c-k>v     <Plug>SlimeConfig

autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

set hidden
