""""""""""""""""""""""""""""""""""""
" Mouse Settings
set mouse=n
set nowrap

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
" - Language Support Plugins
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
let g:lsc_server_commands = {'python' : 'pyls'}
" - plugins
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/ZoomWin'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/Colorizer'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
" - initialise the system
call plug#end()
" - enable the python lsc
let g:lsc_server_commands = { 'python' : 'pyls'}

""""""""""""""""""""""""""""""""""""
" Encoding
set encoding=utf-8

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
" Tab Movement Shortcuts
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

