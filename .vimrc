set nocompatible

autocmd BufWritePre * :%s/\s\+$//e

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
"Plugin 'michaeljsmith/vim-indent-object'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/nerdcommenter'
Plugin 'tomtom/tcomment_vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'corntrace/bufexplorer'
Plugin 'moll/vim-bbye'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
" Plugin 'junegunn/goyo.vim'
" Plugin 'guns/vim-sexp'
" Plugin 'bhurlow/vim-parinfer'

" Plugin 'vim-scripts/paredit.vim'

" Plugin 'reedes/vim-colors-pencil'


xnoremap p pgvy

" Plugin 'paredit.vim'
"Plugin 'AutoTag'

"Plugin 'szarski/buftabs'


" let g:NERDTreeWinSize = 40

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0
set clipboard=unnamed

"set cursorline
"hi CursorLine cterm=NONE ctermbg=darkgray ctermfg=NONE guibg=darkred guifg=white

set autoread                    "Reload files changed outside vim
"set autowrite

syntax on

" Autocomplete
set wildmode=longest,list
set wildmenu

" Tabs
set expandtab

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
" set ignorecase
" set smartcase

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype off
filetype plugin on
filetype indent on

" Display tabs and tr[MaFailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Scrolling =F=======================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

let ruby_space_errors = 1

nnoremap <leader>h :set hlsearch!<CR>

if !has('nvim')
  set term=xterm
  set ttymouse=xterm2
endif

set t_Co=256
let g:solarized_termcolors=16
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
set background=dark
" set background=light
colorscheme solarized
" colorscheme pencil

" highlight clear SignColumn
" highlight VertSplit    ctermbg=236
" highlight ColorColumn  ctermbg=237
" highlight LineNr       ctermbg=236 ctermfg=240
" highlight CursorLineNr ctermbg=236 ctermfg=240
" highlight CursorLine   ctermbg=236
" highlight StatusLineNC ctermbg=238 ctermfg=0
" highlight StatusLine   ctermbg=240 ctermfg=12
" highlight IncSearch    ctermbg=0   ctermfg=3
" highlight Search       ctermbg=0   ctermfg=9
" highlight Visual       ctermbg=3   ctermfg=0
" highlight Pmenu        ctermbg=240 ctermfg=12
" highlight PmenuSel     ctermbg=0   ctermfg=3
" highlight SpellBad     ctermbg=0   ctermfg=1

let mapleader = "\<Space>"

nmap <leader>w <c-w>w
nmap <leader>x :Gblame<CR>
nmap <leader>g :Ag<SPACE>
let g:ackprg = 'ag --nogroup --nocolor --column'

imap <c-l> <space>=><space>
imap <s-tab> <c-x><c-o>

nmap <leader>f :CtrlP<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>d :Bdelete<CR>
nmap <leader>D :bd<CR>

au! BufNewFile,BufRead *.god set ft=ruby
au! BufNewFile,BufRead *.ex set ft=elixir
au! BufNewFile,BufRead *.tsx set ft=typescript
au! BufNewFile,BufRead *.ts set ft=typescript
au! BufNewFile,BufRead *.boot set ft=clojure
au BufRead,BufNewFile * set colorcolumn=80


" nmap <leader>g <C-]>
" nmap <leader>h <C-t>

nmap <leader>n :NERDTreeToggle<CR>

nmap <leader>e :BufExplorer<CR>

set showcmd

set hidden
set mouse=a
set mousemodel=extend

nmap <leader>3 gcc

nmap <leader>s :vsplit<CR>
nmap <leader>z :split<CR>

nmap <leader>v <S-v>

nmap <TAB> <C-w>w
nmap <S-TAB> <C-w><S-w>

let g:ctrlp_custom_ignore = 'build/\|\.agility-shared\|.git\|bin'

set laststatus=2

" let NERDTreeIgnore = ['\.o$']
nmap \ :noh<CR>
nmap <leader>o <c-o>

nmap <leader>r :Eval<CR>
vmap <leader>r :Eval<CR>
nmap <leader>t :Require<CR>

set completeopt-=preview

" Plugin 'scrooloose/syntastic'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'FSwitch'
" nmap <leader>y :FSHere<CR>
" nmap <leader>h :YcmCompleter GoToDefinitionElseDeclaration<CR>
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_key_detailed_diagnostics = '<c-s>d'
Plugin 'rking/ag.vim'
Plugin 'endwise.vim'

" FYI, contents of /after/ftplugin/clojure.vim configuration:
" " Better jumping for Clojure.
" set iskeyword-=.
" set iskeyword-=/

call vundle#end()

nmap <leader>- :w<CR>:!./run<CR>
