""""""""""""""""""""""""""""""""""""
" Mouse Settings
set mouse=n

""""""""""""""""""""""""""""""""""""
" vimplug
" - Autoinstall If Not Present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" - setup
call plug#begin('~/.vim/plugged')
" - plugins
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
"Plug 'Valloric/YouCompleteMe'
"Plug 'python-mode/python-mode'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/ZoomWin'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/Colorizer'
Plug 'pangloss/vim-javascript'
" - initialise the system
call plug#end()

""""""""""""""""""""""""""""""""""""
" Key Mappings
" NERDTREE
map <leader>n :NERDTreeToggle<CR>
" Syntastic
map <leader>s :SyntasticToggleMode<CR>

""""""""""""""""""""""""""""""""""""
" Color Scheme / Soalrized
syntax enable
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=256
colorscheme solarized

""""""""""""""""""""""""""""""""""""
" Airline 
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

""""""""""""""""""""""""""""""""""""
" Syntastic Configuration
" Prefer airline's status line to Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/bin/python2'
let g:syntastic_python_checkers = ['python']
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

""""""""""""""""""""""""""""""""""""
" Python Setup
"let g:pymode_python = ''
"let g:pymode_python = 'python2'
let g:pymode_lint_on_write = 0

""""""""""""""""""""""""""""""""""""
" Tab Movement Shortcuts
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

