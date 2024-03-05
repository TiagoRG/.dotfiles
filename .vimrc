set clipboard+="unnamedplus"

set number
set relativenumber
set signcolumn=auto
set colorcolumn=0
set cursorline

set smartindent
set tabstop=4
set shiftwidth=4
set ls=2

set hlsearch
set incsearch
set ignorecase
set scrolloff=10

set wildmenu

let g:mapleader=" "

syntax on
colorscheme onedark

nnoremap <leader>w :w<CR>
nnoremap <leader>e :E<CR>
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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
	autocmd CmdlineLeave /,\? :nnoremap <buffer> <Esc> :noh<CR>
	autocmd CmdlineChanged /,\? :nnoremap <buffer> <Esc> :noh<CR>
augroup END

