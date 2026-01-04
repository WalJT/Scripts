set number
set nowrap

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | wincmd p | endif

set list
set listchars=tab:>.

colorscheme twilight256
