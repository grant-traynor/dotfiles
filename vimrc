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
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/ZoomWin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/Colorizer'
Plug 'pangloss/vim-javascript'
Plug 'maksimr/vim-jsbeautify'
Plug 'thosakwe/vim-flutter'
Plug 'liuchengxu/vista.vim'
Plug 'coyotebush/vim-pweave'
Plug 'chriskempson/base16-vim'
let g:lsc_server_commands = {'python' : 'pyls'}
call plug#end()

""""""""""""""""""""""""""""""""""""
" Encoding
set encoding=utf-8

""""""""""""""""""""""""""""""""""""
" Key Mappings
" NERDTREE
map <leader>n :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""
" Sync Colorscheme With Alacritty On Linux
syntax enable
if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
endif

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

