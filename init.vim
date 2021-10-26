call plug#begin('~/.config/nvim/vim-plug')
" On-demand loading

"Navigate in files within nvim
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"or
"listing files, commands etc
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"For autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'
Plug 'jackguo380/vim-lsp-cxx-highlight'

""another color schemes
"Plug 'ghifarit53/tokyonight-vim'
"Plug 'joshdick/onedark.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"adjust code look
"Plug 'Chiel92/vim-autoformat'
Plug 'rhysd/vim-clang-format'

Plug 'vim-syntastic/syntastic'

" Initialize plugin system
call plug#end()


syntax on                   " highlight symtax
set number                  " map lines in code with numbers
"set mouse=v                 " middle-click paste with 
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set mouse=a
set cursorline              "highlight the line you are on
set ttyfast
set noswapfile

"map autocompletion
nnoremap<F3> :ClangFormat<CR>

"map making
map <F8> :make%< && ./*<CR>

"map saving
map <F5> :w<CR>

"map fzf
nnoremap <C-n> :Files<Cr>



" map <C-n> :NERDTreeToggle<CR>



" customization of colorscheme
let g:tokyonight_trancbg = 1
let g:tokyonight_style = 'storm'
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
 "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
 "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
 " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


"autocmd BufWritePre *.cpp :normal gg=G                        always

"nnoremap<F2> :%!astyle<CR>                                    always(with ut:
"let g:formatterpath = ['/some/path/to/a/folder', '/home/superman/formatters']


