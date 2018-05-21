" Map the glorious leader
let mapleader = "\<Space>"

nnoremap <Leader>w :w<CR>
nnoremap <Leader>u :u<CR>
nnoremap <Leader>q :q<CR>

nmap <Leader><Leader> V

" vim-commentary stuff
nmap <Leader>cc <Plug>CommentaryLine

" vim-test
nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g<Paste>
