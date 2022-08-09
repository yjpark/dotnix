nnoremap <silent> <C-n> :<C-u>call YJParkNext()<CR>
nnoremap <silent> <C-p> :<C-u>call YJParkPrev()<CR>

nnoremap <C-t> :tab split<CR>
nnoremap ,w :tabclose<CR>

nnoremap <leader>1 :<C-u>call YJParkGoto(1)<CR>
nnoremap <leader>2 :<C-u>call YJParkGoto(2)<CR>
nnoremap <leader>3 :<C-u>call YJParkGoto(3)<CR>
nnoremap <leader>4 :<C-u>call YJParkGoto(4)<CR>
nnoremap <leader>5 :<C-u>call YJParkGoto(5)<CR>
nnoremap <leader>6 :<C-u>call YJParkGoto(6)<CR>
nnoremap <leader>7 :<C-u>call YJParkGoto(7)<CR>
nnoremap <leader>8 :<C-u>call YJParkGoto(8)<CR>
nnoremap <leader>9 :<C-u>call YJParkGoto(9)<CR>
nnoremap <leader>0 :<C-u>call YJParkGoto(10)<CR>

inoremap <leader>1 <Esc:<C-u>call YJParkGoto(1)<CR>
inoremap <leader>2 <Esc:<C-u>call YJParkGoto(2)<CR>
inoremap <leader>3 <Esc:<C-u>call YJParkGoto(3)<CR>
inoremap <leader>4 <Esc:<C-u>call YJParkGoto(4)<CR>
inoremap <leader>5 <Esc:<C-u>call YJParkGoto(5)<CR>
inoremap <leader>6 <Esc:<C-u>call YJParkGoto(6)<CR>
inoremap <leader>7 <Esc:<C-u>call YJParkGoto(7)<CR>
inoremap <leader>8 <Esc:<C-u>call YJParkGoto(8)<CR>
inoremap <leader>9 <Esc:<C-u>call YJParkGoto(9)<CR>
inoremap <leader>0 <Esc:<C-u>call YJParkGoto(10)<CR>

function! YJParkNext()
    if tabpagenr('$') == 1
        bnext
    else
        tabnext
    endif
endfunction

function! YJParkPrev()
    if tabpagenr('$') == 1
        bprevious
    else
        tabprevious
    endif
endfunction

function! YJParkGoto(n)
    if tabpagenr('$') == 1
        let nr = airline#extensions#tabline#get_buffer_nr_by_visible_index(a:n)
        if (nr > 0)
            execute ':buffer ' . nr
        endif
    else
        execute ':tabnext' . a:n
    endif
endfunction

