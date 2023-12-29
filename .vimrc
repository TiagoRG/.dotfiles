set clipboard="unnamedplus"
set nu
set relativenumber
set tabstop=4
set shiftwidth=4
set ls=2

nnoremap <space>w :w<CR>
nnoremap <space>e :E<CR>

xnoremap J :move '>+1<CR>gv=gv
xnoremap K :move '<-2<CR>gv=gv

xnoremap <Tab> >gv
xnoremap <S-Tab> <gv

nnoremap <silent> X @@

nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap <space>m :!make<CR>
