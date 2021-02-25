call plug#begin('/home/rohan/.config/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'vimwiki/vimwiki'

call plug#end()

" <Leader>
let mapleader=","

" remap esc
inoremap jj <Esc> 
" vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" gruvbox
colorscheme gruvbox
set background=dark

" Ale
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python':['flake8']}
let g:ale_fixers = {'python':['black']}
let g:ale_fix_on_save = 1 

" Airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E'
let airline#extensions#ale#warning_symbol = 'W'

:set relativenumber
