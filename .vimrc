" Pathogen plugins
execute pathogen#infect()

" coloration syntaxique
syntax on
" Available on: https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
" 256 colors term (follow each steps): http://www.robmeerman.co.uk/unix/256colours
colorscheme molokai

" aides visuelles
set number
set ruler
set showcmd

" recherche incrémentale
set hlsearch
set incsearch
" set inccommand=nosplit " Neovim only

" auto-indentation à 2 espaces
set autoindent
set tabstop=2
set shiftwidth=4
set softtabstop=2
set expandtab

" compléter avec <Tab> en mode commande
set wildmenu
set wildmode=longest,full

" options honteuses (pour les faibles)
set mouse=a
set clipboard=unnamedplus

" airlines: enable buffers list
let g:airline#extensions#tabline#enabled = 1

" airlines: Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Allow to switch between buffers even if they have modifications
set hidden

" Map <Leader> key to comma
let mapleader=","

" Buffers navigation
map <silent> <C-l> :bnext<cr>
map <silent> <C-h> :bprevious<cr>
map <silent> <C-t> :enew<cr>
map <silent> <C-x> :bprevious<cr>:bdelete  #<cr>

" NerdTree toggle
map <silent> <C-n> :NERDTreeToggle<CR>

" The Silver Searcher
" Requires: apt-get install ag
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --skip-vcs-ignores --ignore var/ -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Enable completion
" Requires: sudo apt-get install ctags
" then run
" ctags -R
" on each project
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=menu " Remove preview buffer

