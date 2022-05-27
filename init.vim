set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set autoindent
set smartindent
set relativenumber
set hlsearch
set incsearch
set ignorecase
set smartcase
set laststatus=2
set noshowmode
set foldmethod=manual
"set nowrap


"Mapping to move in colemak layout
"set langmap=nj,ek,il,li,kn
"set nolangremap
"nnoremap f e| xnoremap f e

" Imports
so ~/.config/nvim/maps.vim
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugin-config.vim
so ~/.config/nvim/lua-configs.lua

colorscheme gruvbox
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = "hard"

" Custom sintax
" all
highlight Normal ctermbg=NONE

"SCSS
hi sassClass ctermfg=Green
hi sassClassChar ctermfg=Cyan
