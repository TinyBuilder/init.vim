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
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'mtscout6/syntastic-local-eslint.vim'
call plug#end()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1

colorscheme molokai
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
autocmd FileType javascript.jsx,javascript setlocal formatprg=prettier\ --stdin\ --single-quote\ --trailing-comma\ --print-width\ 100
