let mapleader = ','
let maplocalleader = ','
" Plugins
call plug#begin('~/.config/nvim/plugged')

" visual
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
" speed
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
" language-specific
Plug 'hynek/vim-python-pep8-indent'
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-surround'
" language-specific/rails
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-haml'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-cucumber'
Plug 'vim-ruby/vim-ruby'
Plug 'keith/rspec.vim'
Plug 'tpope/vim-endwise'
" wrappers
Plug 'tpope/vim-fugitive'

call plug#end()

:nnoremap <C-l> :bnext<CR>
:nnoremap <C-h> :bprevious<CR>

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Tabs
let g:airline#extensions#tabline#enabled = 1

" Colors
set background=dark
colorscheme gruvbox
:let g:airline_theme='gruvbox'

" General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=80	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set expandtab	" Use spaces instead of tabs
set shiftwidth=2	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=2	" Number of spaces per Tab
 
"" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

" EasyMotion Config
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f)
let g:EasyMotion_smartcase = 1
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <C-c> :CtrlPTag<cr>
map <C-w> :bd<cr>

map n <Plug>(easymotion-next)

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
