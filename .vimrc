runtime! debian.vim

""""""""""""""""""
" plugin setup via Vundle
""""""""""""""""""
  set nocompatible  
  filetype off 
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  "Bundle
    Bundle 'gmarik/vundle'
  "rails
    Bundle 'tpope/vim-rails.git'
  "haml 
    Bundle 'tpope/vim-haml.git'
  "coffeescript
    Bundle 'vim-coffee-script'
  "autocompletion
    Bundle 'neocomplcache'
  "neocomplsnippets complete
    Bundle 'neocomplcache-snippets_complete'
  "rails
    Bundle 'rails.vim'
  "for rails.vim
    Bundle 'dbext.vim'
  "pluralization
    Bundle 'abolish.vim'
  "comments toggle
    Bundle 'tComment'
  "ctrlp (fuzzy find- fuckin sweet!)
    Bundle 'kien/ctrlp.vim'
  "bufexplorer
    Bundle 'bufexplorer.zip'
  "minibufexplorer
    Bundle 'minibufexpl.vim'
  "color sampler pack (many themes)
    Bundle 'Color-Sampler-Pack'
  "ScrollColor (easily switch theme)
    Bundle 'ScrollColors'
  "NERDtree
    Bundle 'The-NERD-tree'
  "php >_<
    Bundle 'PIV'
  "tagbar (requires ctags: aptitude install exuberant-ctags)
    Bundle 'Tagbar'
  "snipmate
    Bundle 'snipMate'
  "rake (ruby)
    Bundle 'tpope/vim-rake'
  "bundler (ruby)
    Bundle 'tpope/vim-bundler'
  "gundo
    Bundle 'sjl/gundo.vim' 
  "gist
    Bundle 'mattn/webapi-vim'
    Bundle 'mattn/gist-vim'
  "gitv (gitk for vim) requires fugitive
    "Bundle 'tpope/vim-fugitive'
    "Bundle 'gregsexton/gitv'
  "ruby refactoring
    "Bundle 'ecomba/vim-ruby-refactoring'
  "pastie
    "Bundle 'tpope/vim-pastie'

  filetype plugin indent on

""""""""""""""""""
" vim defaults
""""""""""""""""""
  
set shiftwidth=2              " default 2 spaces
set tabstop=2                 " defalt 2 spaces
set expandtab                 " use spaces instead of tabs
set showcmd			              " Show (partial) command in status line.
set showmatch			            " Show matching brackets.
set ignorecase			          " Do case insensitive matching
set smartcase			            " Do smart case matching
set incsearch           			" Incremental search
set autowrite			            " Automatically save before commands like :next and :make
set hidden      	       	    " Hide buffers when they are abandoned
set mouse=a			              " Enable mouse usage (all modes)
set mat=5  			              " Bracket blinking.
set laststatus=2  		        " Always show status line.
set backup             		    " Enable creation of backup file.
set backupdir=~/.vim/backups 	" Where backups will go.
set directory=~/.vim/tmp     	" Where temporary files will go.
set cf                  			" Enable error files & error jumping.
set history=256  		          " Number of things to remember in history.
"set ruler  			            " Ruler on
set nu  			                " Line numbers on
set nowrap
set wildmenu
set wildmode=list:longest "make cmdline tab completion similar to bash

"tabs for haml
"autocmd FileType html setlocal shiftwidth=2 tabstop=2

"tabs for ruby
"autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

if has("syntax")
  syntax on
endif

"jump to last position on re-opening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

""""""""""""""""""
" config: gist
""""""""""""""""""
  let g:gist_post_private = 1

""""""""""""""""""
" config: NERDtree
""""""""""""""""""
  "open nerdtree on startup 
  autocmd vimenter * NERDTree
  "close vim if nerdtree is the only left open
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
  "focus to file (buffer) on startup, not to nerdtree dafuq
  autocmd VimEnter * wincmd l

  "let g:NERDTreeMouseMode = 2
  let g:NERDTreeWinSize=23
  "let g:NERDTreeShowBookmarks=1
  "let g:NERDTreeAutoCenter=1
  "let g:NERDTreeChDirMode=2


""""""""""""""""""
" config: neocompl
""""""""""""""""""


""""""""""""""""""""""
" keyboard mappings
""""""""""""""""""
nnoremap <f2> :BufExplorer<cr>
nnoremap <f3> :NERDTreeToggle<cr>
nnoremap <f4> :TagbarToggle<cr>

