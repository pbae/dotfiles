set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'ntk148v/vim-horizon'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
"Plug 'mileszs/ack.vim'
"Plug 'vimwiki/vimwiki'
call plug#end()

"execute pathogen#infect()
syntax enable
filetype plugin indent on

let mapleader=","

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
autocmd FileType cpp setlocal ts=2 sts=2 sw=2
set autoindent
set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
"colo molokai
colo seoul256
"colo horizon
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
set wrap
set clipboard^=unnamed
" set iskeyword-=_
set title
set laststatus=2
set noshowmode
set nosol
set ruler

set colorcolumn=100

set directory=~/.vim/swaps//

" fzf
"set rtp+=/usr/local/opt/fzf
"map <leader>f :Files job_alerts<CR>
map <leader>z :FZF<CR>
map <leader>g :GFiles<CR>
map <leader>f :Buffers<CR>
map <leader>h :History<CR>
map <leader>t :Tags<CR>

hi MatchParen ctermbg=55
highlight Normal ctermbg=NONE
"highlight nonText ctermbg=NONE

map <leader><leader> <C-^>
map <leader>w :w<cr>
map <leader>a :Ag<space>
"map <leader>f :CtrlPMRU<cr>
map <leader>b :Gblame<cr>
map <leader>p oimport pdb; pdb.set_trace()<Esc>

" On paste, copy what you just pasted so that you can repeat
xnoremap p pgvy

inoremap jk <Esc>
nnoremap j gj
nnoremap k gk
nnoremap ; :
"nnoremap ' ;

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"nnoremap <c-h> :noh<CR>
nnoremap <cr> :noh<CR>

command Bd bp\|bd \#

"let g:slime_target="tmux"
"xmap <c-k> <Plug>SlimeRegionSend
"nmap <c-k> <Plug>SlimeLineSend
"nmap <c-k>v     <Plug>SlimeConfig

"let g:ctrlp_cmd='CtrlP :pwd'
"let g:ctrlp_max_files=0
"let g:ctrlp_max_depth=40
"let g:ctrlp_match_window = 'min:4,max:30'

let g:ftplugin_sql_omni_key = '<C-j>'

let g:python_highlight_all = 1

"let g:fzf_mru_ignore_patterns = 'fugitive\|\.git/\|\_^/tmp/' " default value

let g:ackprg = 'ag --nogroup --nocolor --column'
"let g:ackprg = 'ag --vimgrep'
"
let g:fzf_history_dir = '~/.local/share/fzf-history'

autocmd Filetype ruby setlocal ts=2 sw=2 softtabstop=2 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab

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
