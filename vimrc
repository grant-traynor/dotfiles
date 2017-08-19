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
Plug 'Valloric/YouCompleteMe'
Plug 'python-mode/python-mode'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/ZoomWin'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'
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
colorscheme solarized
"let g:solarized_termcolors=256

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

""""""""""""""""""""""""""""""""""""
" Python Setup
let g:syntastic_python_checkers = ["python"]

""""""""""""""""""""""""""""""""""""
" Tab Movement Shortcuts
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

