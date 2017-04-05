filetype plugin indent on
syntax enable
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set number
set cursorline
set showcmd
colorscheme slate
set colorcolumn=101
highlight ColorColumn ctermbg=235

call plug#begin('~/.local/share/nvim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/nvim-cm-tern', {'do': 'npm install'}
Plug 'tpope/vim-fugitive'
call plug#end()

let g:ale_linters = { 'javascript': ['eslint'] }

let g:deoplete#enable_at_startup = 1

let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='durant'

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
autocmd FileType javascript.jsx,javascript setlocal formatprg=prettier\ --stdin\ --single-quote\ --trailing-comma\ all\ --print-width\ 100
autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
autocmd BufWritePre *.jsx exe "normal! gggqG\<C-o>\<C-o>"
