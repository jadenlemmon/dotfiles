call plug#begin('~/.vim/plugged')
  Plug 'w0rp/ale'
  Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_fix_on_save = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

map <CR> o<Esc>k
inoremap jj <ESC>

" Default to show line numbers
set number

color dracula
