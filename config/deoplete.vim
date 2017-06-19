" Enable riddiculously good completion
let g:deoplete#enable_at_startup = 1
let deoplete#tag#cache_limit_size = 50000000
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer', 'file', 'tag', 'ultisnips']

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
