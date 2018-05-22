call plug#begin('~/.local/share/nvim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'rking/ag.vim'
Plug 'vim-airline/vim-airline'  " line at the bottom
Plug 'scrooloose/nerdtree'
Plug 'benekastah/neomake'
Plug 'justinmk/vim-gtfo'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'fishbullet/deoplete-ruby'
Plug 'alvan/vim-closetag'
Plug 'Raimondi/delimitMate'
Plug 'posva/vim-vue'
Plug 'sheerun/vim-polyglot'
Plug 'elixir-lang/vim-elixir'
Plug 'vim-ruby/vim-ruby'
Plug 'Yggdroot/indentLine'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'kadekillary/subtle_solo'

call plug#end()

syntax on
filetype plugin indent on

let g:indentLine_char = '│'
let g:indentLine_first_char = '│'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_bgcolor_term = 1
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

set termguicolors
colorscheme subtle_light
let g:airline_theme='solarized'

if has('nvim')
   set ttimeout
   set ttimeoutlen=0
endif

" I am a weak man
set mouse=a

" Clipboard stuff
set clipboard=unnamed

" Segmented configs
source ~/.config/nvim/config/defaults.vim
source ~/.config/nvim/config/keys.vim
source ~/.config/nvim/config/die-arrows-die.vim
source ~/.config/nvim/config/tabs.vim
source ~/.config/nvim/config/splits.vim
source ~/.config/nvim/config/ctrlp.vim
source ~/.config/nvim/config/neomake.vim
source ~/.config/nvim/config/deoplete.vim
source ~/.config/nvim/config/fizzbuzz.vim

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

" New file
nnoremap <Leader>nf :tabedit<SPACE>

" Autoclosing HTML tags
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb"
let delimitMate_excluded_ft = "html"

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
