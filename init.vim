call plug#begin('~/.local/share/nvim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'rking/ag.vim'
Plug 'vim-airline/vim-airline'  " line at the bottom
Plug 'scrooloose/nerdtree'
Plug 'benekastah/neomake'
Plug 'justinmk/vim-gtfo'
Plug 'neomake/neomake'
Plug 'juanedi/predawn.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

call plug#end()

syntax on
filetype plugin indent on

colorscheme predawn
let g:airline_theme='bubblegum'

if has('nvim')
   set ttimeout
   set ttimeoutlen=0
endif


" I am a weak man
set mouse=a

" Clipboard stuff
set clipboard=unnamed

source ~/.config/nvim/config/defaults.vim
source ~/.config/nvim/config/keys.vim
source ~/.config/nvim/config/die-arrows-die.vim
source ~/.config/nvim/config/tabs.vim
source ~/.config/nvim/config/splits.vim
source ~/.config/nvim/config/ctrlp.vim
source ~/.config/nvim/config/neomake.vim

" GitGutter stuff

let g:gitgutter_sign_modified = '•'
let g:gitgutter_sign_added = '❖'
highlight GitGutterAdd guifg = '#A3E28B'

" SilverSearcher is Ripgrep
let g:ag_prg="/usr/local/bin/rg --vimgrep"
nnoremap \ :Ag<SPACE>

" Local nvim config
if filereadable(expand("~/.config/nvim/config/local.vim"))
  source ~/.config/nvim/config/local.vim
endif

" Toggle the tree
nnoremap <Leader>k :NERDTreeToggle<CR>

" Chill with the folding, jeeze
let g:vim_markdown_folding_disabled = 1