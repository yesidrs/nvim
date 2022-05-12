call plug#begin('~/.vim/plugged')

" syntax
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" Themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" Tree
Plug 'preservim/nerdtree'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'mg979/vim-visual-multi'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdcommenter'
Plug 'ap/vim-css-color'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'puremourning/vimspector'
Plug 'APZelos/blamer.nvim'

"Lua 
Plug 'karb94/neoscroll.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'andymass/vim-matchup'

" Dev Icons
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yesid-Rodelo/vim-vscode-devicons'
Plug 'Yesid-Rodelo/vim-vscode-color-icons'

" Flutter
Plug 'dart-lang/dart-vim-plugin'

"Snippets
Plug 'Yesid-Rodelo/custom-vim-react-snippets'
Plug 'Yesid-Rodelo/vim-vscode-color-icons'
Plug 'mhartington/vim-angular2-snippets'

" git
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'tpope/vim-repeat'

call plug#end() 
