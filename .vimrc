call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/unite-outline'
Plug 'SirVer/ultisnips'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" fancy things
hi Normal guibg=NONE ctermbg=NONE
let t:is_transparent = 1
syntax enable 
let g:dracula_colorterm = 0
colorscheme dracula 

nnoremap <C-t> : call Toggle_transparent()<CR>

set hlsearch
set number
set numberwidth=1
set ruler
set cursorline
set cursorcolumn
set tabstop=4 softtabstop=0 expandtab shiftwidth=4
map <F4> :vertical wincmd f<CR>
vnoremap  <leader>y  "+y
nnoremap <leader>p "+p

if has('mouse')
    set mouse=a
    set ttymouse=xterm2
endif

"faster redawing
set ttyfast

nmap <F2> :TagbarToggle<CR>
nmap <F8> :CtrlPMixed<CR>

" move between buffer
nnoremap <silent> H :bp<CR>
nnoremap <silent> L :bn<CR>

noremap ] <C-]>   " forward
noremap [ <C-T>   " back

noremap <C-a> gg<S-v>G"+y


nnoremap <Leader>x *``cgn
nnoremap <Leader>X #``cgN

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" you completed me configuration
let g:ycm_global_ycm_extra_conf = '~/00source/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

" vim config for tmux navigation
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-w>h :TmuxNavigateLeft<cr>
nnoremap <silent> <C-w>j :TmuxNavigateDown<cr>
nnoremap <silent> <C-w>k :TmuxNavigateUp<cr>
nnoremap <silent> <C-w>l :TmuxNavigateRight<cr>
nnoremap <silent> <C-w>\ :TmuxNavigatePrevious<cr>

set colorcolumn=100
