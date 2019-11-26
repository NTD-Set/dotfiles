call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'fcpg/vim-fahrenheit'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/unite-outline'
Plug 'SirVer/ultisnips'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ludwig/split-manpage.vim'
Plug 'mhinz/vim-startify' "fancy start screen

" Theme
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'AlessandroYorba/Sierra'
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'

" Nice status bar
Plug 'bling/vim-airline'

" Show git stuff in gutter
Plug 'airblade/vim-gitgutter'

" Auto close parens, braces, brackets, etc
Plug 'jiangmiao/auto-pairs'

" Convenience for commenting things in and out
Plug 'scrooloose/nerdcommenter'

" Highlight trailing whitespaces
Plug 'ntpeters/vim-better-whitespace'

" Aligning stuff
Plug 'junegunn/vim-easy-align'

" Git integration glore
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
call plug#end()

" fancy things
syntax on
let g:gruvbox_italic=1
"let g:dracula_colorterm = 0
"let t:is_transparent = 1

"set background=dark
set termguicolors
colorscheme gruvbox
"hi Normal ctermbg=NONE guibg=NONE
"hi NonText ctermbg=NONE guibg=NONE
"highlight! NonText ctermbg=none
"hi! NonText ctermbg=none
"hi! LineNr ctermbg=none

" Toggle
nnoremap <leader>a :NERDTreeToggle<cr>
nnoremap <leader>ct :TagbarToggle<CR>
nnoremap <leader>r :CtrlPBuffer<CR>
" yank and paste to clipboard
vnoremap  <leader>y  "+y
nnoremap <leader>p "+p
" Go to this file
nnoremap <leader>gl :vertical wincmd f<CR>
" quickly cancel search highlighting
nnoremap <leader><space> :nohlsearch<cr>
" Strip all trailing whitespace
nnoremap <leader>f :StripWhitespace<cr>
" move between buffer
nnoremap <silent> H :bp<CR>
nnoremap <silent> L :bn<CR>

noremap ] <C-]>   " forward
noremap [ <C-T>   " back

noremap <F2> gg<S-v>G"+y


nnoremap <Leader>x *``cgn
nnoremap <Leader>X #``cgN

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz




" Git status
nnoremap <leader>w :Gstatus<cr>

" [scrooloose/nerdcommenter] Use // for comments
let g:NERDCustomDelimiters = { 'cpp': { 'left': '// ' }, 'c': { 'left': '// '} }
let g:NERDDefaultAlign = 'left'

" Git Gutter always shows
set signcolumn=yes

" Display hidden characters
set list
set listchars=tab:▸\ ,eol:¬

set hlsearch
set number
set numberwidth=1
set ruler
set cursorline
set cursorcolumn
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" read/write file when switching buffers
set autowrite
set autoread
" tab settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
" Automatic indentation is good
set autoindent
" accelerated scrolling
set scrolljump=-15
" See help fo
set formatoptions=qrnj1
" List candidates in wildmenu after tabbing, complete longest common part in
 "matched results. Tabbing again will trigger selection among the matches.
set wildmode=list:longest,full
" set terminal color
set t_Co=256
" set color column
set cc=80

" better vertial movement for wrapped lines
nnoremap j gj
nnoremap k gk
" Use arrow keys to switch tabs
nnoremap <Left> :tabprevious<CR>
nnoremap <Right> :tabnext<CR>

" Quickly insert a timestamp
nnoremap tt "=strftime("%F %T%z")<CR>p
" [scrooloose/nerdcommenter]
" Don't be too smart across lines
let g:AutoPairsMultilineClose=0
" Don't insert extra spaces
let g:AutoPairsMapSpace=0

if has('mouse')
    set mouse=a
    set ttymouse=xterm2
endif

"faster redawing
set ttyfast


" you completed me configuration
let g:ycm_global_ycm_extra_conf = '~/dotfiles/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

" vim config for tmux navigation
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-w>h :TmuxNavigateLeft<cr>
nnoremap <silent> <C-w>j :TmuxNavigateDown<cr>
nnoremap <silent> <C-w>k :TmuxNavigateUp<cr>
nnoremap <silent> <C-w>l :TmuxNavigateRight<cr>
nnoremap <silent> <C-w>\ :TmuxNavigatePrevious<cr>

