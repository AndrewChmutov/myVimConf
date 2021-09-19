call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'

Plug 'jackguo380/vim-lsp-cxx-highlight'

Plug 'joshdick/onedark.vim'

" Initialize plugin system
call plug#end()

syntax on
set number

colorscheme onedark

" tabs as spaces
set expandtab

set tabstop=4
set softtabstop=4
set shiftwidth=4
" highlight Normal guibg=NONE ctermbg=NONE
set termguicolors

map <C-n> :NERDTreeToggle<CR>
