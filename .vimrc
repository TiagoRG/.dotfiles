set nu
set relativenumber
set signcolumn=yes
set colorcolumn=80

set smartindent
set tabstop=4
set shiftwidth=4
set ls=2

set hls
set is
set ic
set scrolloff=10

let g:mapleader=" "

syntax on
colorscheme onedark

nnoremap <leader>w :w<CR>
nnoremap <leader>e :E<CR>

xnoremap J :move '>+1<CR>gv=gv
xnoremap K :move '<-2<CR>gv=gv
nnoremap J mzJ`z

xnoremap <Tab> >gv
xnoremap <S-Tab> <gv

nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y
nnoremap <leader>d "_d
vnoremap <leader>d "_d

nnoremap <silent> Q @@

vnoremap <leader>rs :s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>ra :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>rc :%s/\<<C-r><C-w>\>/<C-r><C-w>/gcI<Left><Left><Left><Left>

nnoremap <leader>m :!make<CR>

augroup SearchHighlight
	autocmd!
	autocmd CmdlineLeave /,\? :nnoremap <buffer> <Esc> :nohls<CR>
	autocmd CmdlineChanged /,\? :nnoremap <buffer> <Esc> :nohls<CR>
augroup END

