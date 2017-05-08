set number
set wildmenu
set fencs=utf-8,GB18030,ucs-bom,default,latin1
"设置缩进的空格的数量
set ts=4
set expandtab


"<F3>表示运行python3.5
map <F3> :call CompileViaPython3_5()<CR>
func! CompileViaPython3_5()
    exec "w"
    if &filetype == 'python'
        exec "!time python3.5 %"
    endif
endfunc


"<F4>表示运行python2.7
map <F2> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'python'
        exec "!time python2.7 %"
    endif
endfunc
