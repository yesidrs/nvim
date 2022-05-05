set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
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
set nowrap


" Colemak map keys
nnoremap h h|xnoremap h h|onoremap h h|
nnoremap n j|xnoremap n j|onoremap n j|
nnoremap e k|xnoremap e k|onoremap e k|
nnoremap i l|xnoremap i l|onoremap i l|
nnoremap k n|xnoremap k n|onoremap k n|
nnoremap l i|xnoremap l i|onoremap l i|
nnoremap f e|xnoremap f e|onoremap f e|

" Imports
so ~/.config/nvim/maps.vim
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugin-config.vim
so ~/.config/nvim/lua-configs.lua

"colorscheme onehalfdark
colorscheme gruvbox
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = "hard"

" Custom sintax
" all
highlight Normal ctermbg=NONE

"SCSS
hi sassClass ctermfg=Green
hi sassClassChar ctermfg=Cyan

"Js
hi jsBraces ctermfg=DarkMagenta 
hi jsBrackets ctermfg=Magenta
hi jsFuncBraces ctermfg=Blue
hi jsClassBraces ctermfg=Blue
hi jsIfElseBraces ctermfg=Blue 
hi jsTryCatchBraces ctermfg=Blue
hi jsModuleBraces ctermfg=Blue
hi jsObjectBraces ctermfg=Blue 
hi jsObjectSeparator ctermfg=Blue
hi jsFinallyBraces ctermfg=Blue
hi jsRepeatBraces ctermfg=Blue 
hi jsSwitchBraces ctermfg=Blue 
hi jsTemplateBraces ctermfg=Blue 
hi jsDestructuringBraces ctermfg=Blue 
hi jsObjectKey ctermfg=Blue
hi jsOperatorKeyword ctermfg=Red
hi jsFuncArgs ctermfg=Yellow


"Ts
"hi typescriptDecorator  ctermfg=Magenta cterm=bold
"hi typescriptBraces     ctermfg=Blue
"hi typescriptClassName  ctermfg=Blue

"hi typescriptImport     ctermfg=blue
"hi typescriptMember     ctermfg=DarkGreen cterm=bold
"hi typescriptBlock      ctermfg=Magenta
"hi typescriptMethodAccessor       ctermfg=red
