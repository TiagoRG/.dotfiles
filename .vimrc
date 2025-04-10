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

nnoremap <C-q> :qa<CR>
nnoremap <leader>q :q<CR>
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

" let &t_SI = "\e[6 q"
" let &t_EI = "\e[2 q"

" augroup myCmds
" 	au!
" 	autocmd VimEnter * silent !echo -ne "\e[2 q"
" augroup END

let g:highlightedyank_highlight_duration = 100

call plug#begin()

Plug 'joshdick/onedark.vim'

Plug 'rose-pine/vim', { 'as': 'rose-pine' }

Plug 'github/copilot.vim'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'

Plug 'machakann/vim-highlightedyank'

call plug#end()

syntax on
colorscheme rosepine
au BufRead,BufNewFile *.g4 set filetype=antlr4
