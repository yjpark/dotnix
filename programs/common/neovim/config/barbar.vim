" Move to previous/next
nnoremap <silent>    <C-n> <Cmd>BufferNext<CR>
nnoremap <silent>    <C-p> <Cmd>BufferPrevious<CR>

" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>

" Goto buffer in position
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>

nnoremap <silent>    <leader>1 <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <leader>2 <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <leader>3 <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <leader>4 <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <leader>5 <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <leader>6 <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <leader>7 <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <leader>8 <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <leader>9 <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <leader>0 <Cmd>BufferLast<CR>

" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>

highlight BufferCurrent ctermfg=Red ctermbg=Yellow
highlight BufferCurrentIndex ctermfg=Red ctermbg=Yellow
highlight BufferCurrentMod ctermfg=Red ctermbg=Yellow
highlight BufferCurrentSign ctermfg=Red ctermbg=Yellow
highlight BufferCurrentTarget ctermfg=Red ctermbg=Yellow

