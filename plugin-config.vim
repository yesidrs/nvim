" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'
let g:vim_matchtag_files = '*.html,*.xml,*.jsx,*.vue,*.svelte'

"auto-pairs - disable warnings
let g:VM_show_warnings = 0

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0

" rainbow
let g:rainbow_active = 1

let g:rainbow_conf = {
	\	'separately': {
	\		'nerdtree': 0,
	\	}
	\}

"  nerdtree
let NERDTreeShowHidden=0 "show or hide .files (example .gitignore .metadata, etc)
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let g:NERDTreeWinPos = "right"
let NERDTreeMapActivateNode='i'
let NERDTreeMapCustomOpen='h'
let NERDTreeMapPreview='o'
let NERDTreeMapOpenExpl = '<C-e>'


"js plugin from vim-poliglot
let g:javascript_plugin_flow = 1

"UltiSnips 
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger="<A-l>" "It's necessary to coc <tab> works

"lsc dart
let g:lsc_auto_map = v:true

" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" fugitive always vertical diffing
set diffopt+=vertical


" Highlight symbol under cursor on CursorHold
let $FZF_DEFAULT_OPTS='--layout=reverse'

" ignore node_modules
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"devicons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

"Git states icons
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "M",
    \ "Staged"    : "A",
    \ "Untracked" : "U",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "D",
    \ "Dirty"     : "●",
    \ "Clean"     : "✓",
    \ 'Ignored'   : '✗',
    \ "Unknown"   : "?"
    \ }


" COC
"autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

" coc code actions
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Minimap
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
