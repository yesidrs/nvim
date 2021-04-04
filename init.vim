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
set relativenumber
set hlsearch
set incsearch
set ignorecase
set smartcase
set laststatus=2
set noshowmode
set foldmethod=manual

so ~/.config/nvim/maps.vim
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugin-config.vim

colorscheme gruvbox 
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = "hard"

" Custom sintax
" all
highlight Normal ctermbg=NONE

"SCSS
hi sassClass ctermfg=Green
hi sassClassChar ctermfg=Cyan

"Js/Ts
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
