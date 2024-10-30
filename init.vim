" Plugins ---------------------------------------------------------------- {{{
call plug#begin('~/.nvim/plugged')
    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'

    " Nvim cmp
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'

    " Tpope
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-surround'

    " DB
    Plug 'tpope/vim-dadbod'
    Plug 'kristijanhusak/vim-dadbod-ui'
    Plug 'kristijanhusak/vim-dadbod-completion'

    " UI
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'morhetz/gruvbox'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'nvim-tree/nvim-web-devicons'
call plug#end()
" }}}

" Editor ----------------------------------------------------------------- {{{
" Disable vi compatibility
set nocompatible
" Enable 24-bit RGB
set termguicolors
" Colorscheme gruvbox
colorscheme gruvbox
" Enable file type detection
filetype on
" Enable plugins
filetype plugin on
" Don't save backup files
set nobackup
" Set history size
set history=200
" Disable the netrw banner
let g:netrw_banner = 0
" File list display style to 'tree' format
let g:netrw_liststyle = 3
" }}}

" Editing ---------------------------------------------------------------- {{{
" Turn on syntax highlighting
syntax on
" Add line numbers
set number
" Highlight the active line
set cursorline
" Highlight column 79
set colorcolumn=79
" Show part of the command being entered
set showcmd
" Show current mode
set showmode
" Show matching words during search
set showmatch
" Use highlighting when searching
set hlsearch
" Enable auto completion menu after pressing TAB
set wildmenu
" Make wildmenu look like Zsh autocompletion
set wildmode=full
" }}}

" Indents ---------------------------------------------------------------- {{{
" Use space characters instead of tabs
set expandtab
" Set shift width to 4 spaces
set shiftwidth=4
" Set tab width to 4 columns
set tabstop=4
" Inserts 4 spaces when pressing Tab
set softtabstop=4
" Automatically adds indents to new lines
set autoindent
" Improves automatic indentation
set smartindent
" }}}

" Mappings --------------------------------------------------------------- {{{
" Moving between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Moving between tabs
nnoremap H gT
nnoremap L gt
" Fixing the & command
nnoremap & :&&<CR>
xnoremap & :&&<CR>
" Fixing history navigation
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" Reindexing
nnoremap <f5> :!ctags -R<CR>
" }}}

" LSP -------------------------------------------------------------------- {{{
lua << EOF
require 'lsp'
EOF
" }}}

" UI --------------------------------------------------------------------- {{{
lua << EOF
require 'ui'
EOF
" }}}
