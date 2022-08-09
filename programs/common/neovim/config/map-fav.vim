noremap ; :
noremap ' "

noremap <C-a> 0
noremap <C-e> $
noremap <C-h> X

nnoremap <silent> ,1 :VimShell<CR>
nnoremap <silent> ,2 :VimFiler<CR>

nnoremap ,5 :set wrap! wrap?<CR>
nnoremap ,6 :set paste! paste?<CR>
nnoremap ,9 :set lines=100<CR>:set columns=1000<CR>
nnoremap ,0 :set hlsearch! hlsearch?<CR>

"noremap ,. :Ack 
"Search the word under cursor, see :help cmdline-editing for more details
"noremap <silent> ,f :Ack <C-r><C-w><CR>

"noremap ,p :CtrlP<CR>
"noremap ,, :CtrlPBuffer<CR>
"noremap ,' :CtrlPMRU<CR>
"noremap ,' <Leader><Leader>b

" Disable the ctrlp default mapping
let g:ctrlp_map = '<leader><c-p>'

"nnoremap ,t :CtrlPBufTag<CR>
nnoremap ,T :CtrlPBufTagAll<CR>
nnoremap ,u :CtrlPFunky<CR>

noremap <C-g> :YcmCompleter GoToDeclaration<CR>
noremap ,g :YcmCompleter GoToImplementationElseDeclaration<CR>
noremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"noremap <silent> ,r :registers<CR>

"noremap <silent> ,t :TagbarShowTag<CR>
noremap <silent> ,b :NERDTreeToggle<CR>
"Sometime the nerdtree windows will take all space, before fix that, can use
"this map to fix it temporary
noremap <silent> ,B :vertical resize 32<CR>

noremap <silent> ,l :TagbarToggle<CR>
noremap <silent> <leader>u :GundoToggle<CR>
noremap <silent> ,q :QuickfixsignsToggle<CR>

nmap <leader>p :call AutoPairsToggle()<CR>

map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

nnoremap <Leader><Leader>z :<C-u>call YJParkToggleScrollLock()<CR>

function! YJParkToggleScrollLock()
    let &scrolloff=999-&scrolloff
    set scrolloff
endfunction


nnoremap <Leader>j :<C-u>m .+1<CR>
nnoremap <Leader>k :<C-u>m .-2<CR>
