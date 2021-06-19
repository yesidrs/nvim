let mapleader=" "

"My custom maps
inoremap hf <Esc>


"Format on selected
vmap <leader>fs  <Plug>(coc-format-selected)
nmap <leader>fs  <Plug>(coc-format-selected)

" source %
map <leader>% :source %<CR>

"Dart and flutter
map <leader>df :DartFmt<CR>
map <leader>fr :CocCommand flutter.run<CR>
map <leader>fl :CocCommand flutter.emulators<CR>
map <leader>fo :CocCommand flutter.toggleOutline<CR>
map <leader>fq :CocCommand flutter.dev.quit<CR>
map <leader>fR :CocCommand flutter.dev.hotRestart<CR>
map <leader>fg :CocCommand flutter.dev.openDevLog<CR>
map <leader>fc :CocCommand flutter.dev.clearDevLog<CR>
map <leader>fd :CocCommand flutter.dev.openDevToolsProfiler<CR>
map <leader>fwi :CocCommand flutter.dev.showWidgetInspectorOverride<CR>

" parentheses jump
map <leader>j %

" move line code
map <A-j> :move +1<CR>
map <A-k> :move -2<CR>

" copy line below
nnoremap <S-A-j> yy p

" fast init or final code line
map <leader>l $
map <leader>h 0

" scrolling
noremap s 5<c-e>
noremap f 5<c-y>
nnoremap <s-s> <c-d>
nnoremap <s-f> <c-u>

" redo
nnoremap r <c-r>

"search
map <Leader>nl :nohl<CR>
map <Leader>fi /

" testing
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" quick semi
nnoremap <Leader>; $a;<Esc>
nnoremap <Leader>, $a,<Esc>

nnoremap <Leader>s :w<CR>
nnoremap <Leader>w :q<CR>

" shorter commands
cnoreabbrev tree NERDTreeToggle
cnoreabbrev blame Gblame
cnoreabbrev find NERDTreeFind
cnoreabbrev diff Gdiff

" plugs
map <Leader>nt :NERDTreeFind<CR>
map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>

" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()
 
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" diagnostics
nnoremap <leader>kp :let @*=expand("%")<CR>

" tabs navigation
map <Leader>q :tabprevious<cr>
map <Leader>e :tabnext<cr>

" buffers
map <Leader>r :Buffers<cr>


" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>

" Easymotion
nmap <Leader>m <Plug>(easymotion-s2)

" git
nnoremap <Leader>G :Git<cr>
nnoremap <Leader>gp :Git push<cr>
nnoremap <Leader>gl :Git pull<cr>
nnoremap <Leader>gc :Git commit -m 

" run current file
nnoremap <Leader>x :!node %<cr>

" Use <c-space> to trigger completion.
if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

set splitright

function! OpenTerminal()
  " move to right most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " close existing terminal
    execute "q"
  else
    " open terminal
    execute "vsp term://fish"

    " turn off numbers
    execute "set nonu"
    execute "set nornu"

    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>


" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" confirm config with enter
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
