set nu
set relativenumber
set tabstop=4
set shiftwidth=4
set ls=2
set hlsearch
set incsearch
set scrolloff=10

let g:mapleader = " "

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

nnoremap <leader>r :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

nnoremap <leader>m :!make<CR>

augroup SearchHighlight
    autocmd!
    autocmd CmdlineLeave /,\? :nnoremap <buffer> <Esc> :nohls<CR>
augroup END

augroup CursorShape
    autocmd!
    autocmd VimEnter,InsertEnter * set guicursor=n-v-c:block-Cursor/lCursor
    autocmd InsertLeave * set guicursor=n-v-c:ver25-Cursor/lCursor
augroup END

