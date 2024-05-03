set nocompatible

" autocmd BufWritePre * :%s/\s\+$//e

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" Plugin 'pangloss/vim-javascript'
"Plugin 'michaeljsmith/vim-indent-object'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'sainnhe/everforest'

Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/nerdcommenter'
Plugin 'tomtom/tcomment_vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'corntrace/bufexplorer'
Plugin 'moll/vim-bbye'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-classpath'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'

Plugin 'neovim/nvim-lspconfig'
Plugin 'hrsh7th/cmp-nvim-lsp'
Plugin 'hrsh7th/cmp-buffer'
Plugin 'hrsh7th/nvim-cmp'

Plugin 'c.vim'

Plugin 'peitalin/vim-jsx-typescript'
Plugin 'williamboman/mason.nvim'
Plugin 'williamboman/mason-lspconfig.nvim'

" Plugin 'junegunn/goyo.vim'
" Plugin 'guns/vim-sexp'
" Plugin 'tpope/vim-sexp-mappings-for-regular-people'
" Plugin 'bhurlow/vim-parinfer'

" Plugin 'vim-scripts/paredit.vim'

" Plugin 'OmniSharp/omnisharp-vim'
" Plugin 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
" Plugin 'prabirshrestha/vim-lsp'
" Plugin 'mattn/vim-lsp-settings'
" Plugin 'dense-analysis/ale'
" Plugin 'idbrii/vim-unityengine'

" Plugin 'tidalcycles/vim-tidal'

" Plugin 'venantius/vim-cljfmt'

Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'jremmen/vim-ripgrep'


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



let mapleader = "\<Space>"

nmap <leader>w <c-w>w
nmap <leader>x :Gblame<CR>
" nmap <leader>g :Ag<SPACE>o
nmap <leader>g :Ag <C-D>
let g:ackprg = 'ag --nogroup --nocolor --column'

imap <c-l> <space>=><space>
imap <s-tab> <c-x><c-o>

nmap <leader>f :FZF<CR>
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

set laststatus=2

" let NERDTreeIgnore = ['\.o$']
nmap \ :noh<CR>
nmap <leader>o <c-o>

nmap <leader>r :Eval<CR>
vmap <leader>r :Eval<CR>
nmap <leader>t :Require<CR>

autocmd BufNewFile,BufRead *.tidal nmap <leader>r :TidalSend<CR>
autocmd BufNewFile,BufRead *.tidal vmap <leader>r :TidalSend<CR>

" set completeopt-=preview


" Plugin 'Valloric/YouCompleteMe'
" let g:ycm_auto_trigger = 1
" let g:ycm_key_list_select_completion = ['<Down>']
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "ᐅ"
Plugin 'habamax/vim-godot'
" if !has_key( g:, 'ycm_language_server' )
"   let g:ycm_language_server = []
" endif
" let g:ycm_language_server += [
"   \   {
"   \     'name': 'godot',
"   \     'filetypes': [ 'gdscript' ],
"   \     'project_root_files': [ 'project.godot' ],
"   \     'port': 6005
"   \   }
"   \ ]
" let g:godot_executable = '/Applications/Godot.app'


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



Plugin 'clktmr/vim-gdscript3'



call vundle#end()

nmap <leader>- :w<CR>:!./run<CR>
" nmap <leader>- :w<CR>:GodotRunLast<CR>


nmap <leader>j :set iskeyword+=/<CR>[<C-D>:set iskeyword-=/<CR>
nmap <leader>i cpp
nmap <leader>l :Last<CR>
nmap gd [<C-D>

let g:fzf_layout = { 'down':  '40%'}


" coc
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gr <Plug>(coc-references)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gn <Plug>(coc-rename)
" let b:coc_suggest_disable = 0
" inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"




" set t_Co=256
" let g:solarized_termcolors=16
" let &t_AB="\e[48;5;%dm"
" let &t_AF="\e[38;5;%dm"
set background=dark
" set background=light
if has('termguicolors')
  set termguicolors
endif
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'
let g:everforest_better_performance = 1
colorscheme everforest


let g:godot_executable = '~/godot/bin/godot.macos.editor.x86_64'

set completeopt-=preview
" set completeopt=menu,menuone,noselect
set signcolumn=yes

lua << EOF
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "clojure_lsp", "tsserver" }
}

local cmp = require'cmp'
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- delay update diagnostics
    update_in_insert = false,
  }
)

cmp.setup({
  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
  },
  completion = {
    callSnippet = 'Replace',
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  }
})

local lspconfig = require('lspconfig')
lspconfig.clojure_lsp.setup {}
lspconfig.tsserver.setup {}
lspconfig.jedi_language_server.setup {}
lspconfig.gdscript.setup{capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())}

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>un', vim.lsp.buf.rename, opts)
    -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    -- vim.keymap.set('n', '<space>f', function()
    --   vim.lsp.buf.format { async = true }
    -- end, opts)
  end,
})
EOF


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
