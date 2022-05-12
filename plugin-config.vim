"auto-pairs - disable warnings
let g:VM_show_warnings = 0

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline_theme='base16_gruvbox_dark_hard'

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

" blamer (Gitlens)
let g:blamer_enabled = 1
let g:blamer_delay = 500
