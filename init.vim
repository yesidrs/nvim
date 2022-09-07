set autoindent
set clipboard=unnamedplus
set cursorline
set encoding=utf-8
set foldmethod=manual
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set noshowmode
set number
set numberwidth=1
set relativenumber
set ruler
set showcmd
set showmatch
set smartcase
set smartindent
set sw=2
set nobackup
set nowritebackup
syntax on
"set nowrap

"Mapping to move in colemak layout
"set langmap=nj,ek,il,li,kn
"set nolangremap
"nnoremap f e| xnoremap f e

" Imports - Linux
"so ~/.config/nvim/maps.vim
"so ~/.config/nvim/plugins.vim
"so ~/.config/nvim/plugin-config.vim
"so ~/.config/nvim/lua-configs.lua

" Windows - Here change the username to your own
so C:\Users\Yesid\AppData\Local\nvim\maps.vim
so C:\Users\Yesid\AppData\Local\nvim\plugins.vim
so C:\Users\Yesid\AppData\Local\nvim\plugin-config.vim
so C:\Users\Yesid\AppData\Local\nvim\lua-configs.lua

if has('termguicolors')
	set termguicolors
endif

set background=dark

" Original Gruvbox
"colorscheme gruvbox
"let g:gruvbox_italic=1
"let g:gruvbox_contrast_dark = "hard"

let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_disable_italic_comment = 1
let g:gruvbox_material_enable_italic = 1

colorscheme gruvbox-material

" Custom sintax
" all
highlight Normal ctermbg=NONE

"SCSS
hi sassClass ctermfg=Green
hi sassClassChar ctermfg=Cyan
