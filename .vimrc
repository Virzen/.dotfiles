"=== Plugins ==="
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'daylerees/colour-schemes', { 'rtp': 'vim/' }

call plug#end()


"=== Theme ==="
syntax on
colorscheme earthsong

if (has("termguicolors"))
  set termguicolors
endif


"=== Keybindings ==="
let mapleader = ' '
map <leader>t :FZF<cr>
map <leader>o :NERDTreeToggle<cr>

" Split pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"=== NERDTree ==="
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1


"=== gitgutter ==="
let g:gitgutter_sign_column_always = 1
let g:gitgutter_realtime = 1
set updatetime=250


"=== Other ==="
" Necessary for lots of cool vim things
set nocompatible

" Line numbering
set relativenumber
set number

" A buffer becomes hidden when it is abandoned
set hidden

" Show current file info in the bottom bar
set laststatus=2
set ruler

" Open new split panes to right and bottom
set splitbelow
set splitright

" Configure backspace so it acts as it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Show matching brackets when text indicator is over them
set showmatch

" Highlight search results
set hlsearch

" Start searching before pressing enter
set incsearch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Turn backup off
set nobackup
set nowb
set noswapfile
