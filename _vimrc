" vim -S session.vim
set nu
set tabstop=4
set expandtab
set autoindent
"set tabstop=8 
"set expandtab shiftwidth=4 
"set softtabstop=4
set smartindent
set shiftwidth=4
syntax on
filetype plugin on
filetype indent on
set hlsearch
set incsearch
colorscheme candycode 
"colorscheme desert
set fileencoding=utf8
set termencoding=utf-8
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/mswin.vim
"lang messages zh_CN.utf-8
set encoding=utf-8
       if has('gui_running')
               " gvim-only stuff
        set guifont=DejaVu\ Sans\ Mono\ 11
        set guifontwide=WenQuanYi\ Zen\ Hei\ 11
        set linespace=-2
               colorscheme candycode 
               "set guifont=DejaVu\ Sans\ 11
"               set go=
       else
               " non-gvim stuff
               colorscheme  elflord
               map <F7> :gui<CR>

       endif
" 自动检测文件类型并加载相应的设置
filetype plugin indent on
autocmd FileType python setlocal et sta sw=4 sts=4
let g:pydiction_location = '~/.vim/complete-dict'



if has("autocmd")

  " 自动检测文件类型并加载相应的设置
  filetype plugin indent on

  " Python 文件的一般设置，比如不要 tab 等
  autocmd FileType python setlocal et | setlocal sta | setlocal sw=4

  " Python Unittest 的一些设置
  " 可以让我们在编写 Python 代码及 unittest 测试时不需要离开 vim
  " 键入 :make 或者点击 gvim 工具条上的 make 按钮就自动执行测试用例
  autocmd FileType python compiler pyunit
  autocmd FileType python setlocal makeprg=python\ ./alltests.py
  autocmd BufNewFile,BufRead test*.py setlocal makeprg=python\ %

  " 自动使用新文件模板
  autocmd BufNewFile test*.py 0r ~/.vim/skeleton/test.py
  autocmd BufNewFile alltests.py 0r ~/.vim/skeleton/alltests.py
  autocmd BufNewFile *.py 0r ~/.vim/skeleton/skeleton.py

endif

let Tlist_Show_Menu=1
nmap <silent> <F8> :WMToggle<cr>
"“”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"
"” F6 BufExplorer
"“”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"”"
map <F5> :make <cr>
map <F6> :make clean<CR>
map <F12> :make fire<cr>

map  <F9>   <Plug>ShowFunc
map! <F9>   <Plug>ShowFunc

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let g:winManagerWindowLayout = "TagList|FileExplorer,BufExplorer"
"设置winmanager的宽度，默认为25
nmap wm :WMToggle<cr>
"let g:winManagerWidth = 30

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR> nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"0 或 s 	查找本 C 符号(可以跳过注释)
"1 或 g 	查找本定义
"2 或 d 	查找本函数调用的函数
"3 或 c 	查找调用本函数的函数
"4 或 t 	查找本字符串
"6 或 e 	查找本 egrep 模式
"7 或 f 	查找本文件
"8 或 i 	查找包含本文件的文件
"
map <F2> :Calendar<cr>
map <F3> :CalendarH<cr> 

"
set nocp
 map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

  let g:SuperTabRetainCompletionType=2
  let g:SuperTabDefaultCompletionType="<C-X><C-O>"
 
  "-- omnicppcomplete setting --
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype  in popup window
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_DefaultNamespaces=["std"]

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete



" new added by ho0
"
"---------------------------
"set the ctags_url
" let Tlist_Ctags_Cmd = 'D:\ctags58\ctags.exe'
let Tlist_Exit_OnlyWindow=1

"设置界面分割

"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWindowLayout = "TagList|FileExplorer,BufExplorer"

"设置winmanager的宽度，默认为25
let g:winManagerWidth = 30

"定义打开关闭winmanager按键
nmap <silent> <F8> :WMToggle<cr>



" 不同时显示多个文件的 tag ，只显示当前文件的

let Tlist_Show_One_File=1

" 如果 taglist 窗口是最后一个窗口，则退出 vim

let Tlist_Exit_OnlyWindow=1
  let g:SuperTabRetainCompletionType=2
  let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"let g:acp_ignorecaseOption = 2
"let g:acp_completeoptPreview = 2


"highlight Pmenu      ctermfg=2 ctermbg=3 guifg=#ff0000 guibg=#00ff00
"highlight PmenuSel   ctermfg=2 ctermbg=3 guifg=#ff0000 guibg=#00ff00
"
"highlight Pmenu guibg=brown gui=bold
"hi Pmenu ctermfg=0 ctermbg=6 guibg=#444444
"hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff

hi Pmenu ctermfg=white ctermbg=black guibg=brown
hi PmenuSel ctermfg=red ctermbg=gray guibg=black guifg=yellow
"
"
" complete menu

"function Stlport_load()
"    set tags+=/mnt/source/stl/STLport-5.2.1/stlport/tags
"    cs add /mnt/source/stl/STLport-5.2.1/stlport/cscope.out 
"endfunction
"
let g:clang_library_path="/usr/lib64/"
"let g:clang_complete_copen=1
"let g:clang_periodic_quickfix=1
"let g:clang_snippets=1
"let g:clang_close_preview=1
"let g:clang_use_library=1
"let g:clang_user_options='-stdlib=libc++ -std=c++11 -IIncludePath'

let g:cpp_class_scope_highlight = 1

let g:cpp_experimental_template_highlight = 1

" Add highlighting for function definition in C++
"function! EnhanceCppSyntax()
"    syn match cppFuncDef "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?$"
"    hi def link cppFuncDef Special
"endfunction
" from : http://vim.wikia.com/wiki/Highlighting_of_method_names_in_the_definition
"autocmd Syntax cpp call EnhanceCppSyntax()

