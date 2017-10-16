set nocompatible

execute pathogen#infect()
syntax enable
filetype plugin indent on

let mapleader=","

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
colo pbae
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
" set iskeyword-=_
set title
set laststatus=2
set noshowmode
set nosol

" set colorcolumn=120

hi MatchParen ctermbg=55
highlight Normal ctermbg=NONE
"highlight nonText ctermbg=NONE

map <leader><leader> <C-^>
map <leader>a :Ack<space>
map <leader>f :MRU<cr>
map <leader>b :Gblame<cr>

inoremap jk <Esc>
nnoremap j gj
nnoremap k gk
nnoremap ; :
"nnoremap ' ;

"nnoremap <c-h> :noh<CR>
nnoremap <cr> :noh<CR>

"let g:slime_target="tmux"
"xmap <c-k> <Plug>SlimeRegionSend
"nmap <c-k> <Plug>SlimeLineSend
"nmap <c-k>v     <Plug>SlimeConfig

let g:ctrlp_cmd='CtrlP :pwd'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_match_window = 'min:4,max:30'

let g:ftplugin_sql_omni_key = '<C-j>'

let g:fzf_mru_ignore_patterns = 'fugitive\|\.git/\|\_^/tmp/' " default value

"let g:ackprg = 'ag --vimgrep'

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

so ~/.private.vim

