filetype plugin indent on
syntax enable
set tabstop=2
set shiftwidth=2
set expandtab
set number
set cursorline
set showcmd

call plug#begin('~/.local/share/nvim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

let g:ale_linters = { 'javascript': ['eslint'] }

let g:deoplete#enable_at_startup = 1

let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='durant'

colorscheme slate
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
autocmd FileType javascript.jsx,javascript setlocal formatprg=prettier\ --stdin\ --single-quote\ --trailing-comma\ all\ --print-width\ 100
autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
autocmd BufWritePre *.jsx exe "normal! gggqG\<C-o>\<C-o>"
