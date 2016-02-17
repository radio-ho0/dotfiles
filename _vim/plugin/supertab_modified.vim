inoremap <C-Tab> <Tab>
inoremap <silent> <Tab> <C-r>=<SID>i_Tab_plus()<CR>
inoremap <silent> <expr> <S-Tab> pumvisible()?"\<C-p>":"\<C-d>"


function! s:i_Tab_plus()
    let preChar = getline('.')[col('.') - 2]
    if pumvisible()
"       return "\<Down>"
        return "\<C-n>"
    elseif preChar == '' || preChar =~ '\s'
        return "\<Tab>"
    elseif (getline('.')[col('.') - 3] == '-' && preChar == '>') || preChar == '.'
"       return "\<C-x>\<C-o>\<C-r>=I_OnPopupPost()\<CR>"
        return "\<C-x>\<C-o>"
    elseif &ft ==# 'c' || &ft ==# 'cpp'
        return "\<C-n>"
    else
"       call feedkeys("\<C-x>\<C-n>" . "\<C-r>=I_OnPopupPost()\<CR>", 'n')
"       return ''
"       return "\<C-x>\<C-n>\<C-r>=I_OnPopupPost()\<CR>"
        return "\<C-x>\<C-n>"
    endif
endf
