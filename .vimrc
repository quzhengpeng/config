" 设置主题
colorscheme desert

" 设置主题
colorscheme vitaminonec

set background=dark

" 设置语法高亮
syntax on

" 设置状态行显示的内容. %F: 显示当前文件的完整路径. %r: 如果readonly,会显示[RO]
" %B: 显示光标下字符的编码值,十六进制. %l:光标所在的行号. %v:光标所在的虚拟列号.
" %P: 显示当前内容在整个文件中的百分比. %H和%M是strftime()函数的参数,获取时间.
set statusline=%F%r\ [%l,%v,%P]\ %{strftime(\"%H:%M:%S\")}

"共享剪贴板  
set clipboard+=unnamed 

"自动保存
set autowrite

" 高亮显示所有搜索到的内容.后面用map映射快捷键来方便关闭当前搜索的高亮.
set hlsearch

" 光标立刻跳转到搜索到内容
set incsearch

" 去掉输入错误时的提示声音
set noeb

"在处理未保存或只读文件的时候，弹出确认
set confirm

"去掉有关vi一致性模式,避免操作习惯上的局限.
set nocompatible

" 高亮显示括号匹配
set showmatch

" 设置 Tab 长度为 4 空格
set tabstop=4
" 设置自动缩进长度为 4 空格
set shiftwidth=4
" 自动缩进,这个导致从外面拷贝多行以空格开头的内容时,会有多的缩进
set autoindent
" 输入tab制表符时，自动替换成空格
set expandtab
" 设置softtabstop有一个好处是可以用Backspace键来一次删除4个空格.
" softtabstop的值为负数,会使用shiftwidth的值,两者保持一致,方便统一缩进.
" set softtabstop=4
         
" 显示行号
set nu      " 等同于 set number
" 突出显示当前行
set cul     " 等同于 set cursorline
" 突出显示当前列
set cuc     " 等同于 set cursorcolumn
" 显示空格和 tab 键
set listchars=tab:>-,trail:-
" 1=启动显示状态行, 2=总是显示状态行.设置总是显示状态行,方便看到当前文件名
set laststatus=2


" 自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

" 打开文件类型检测,并载入文件类型插件,为特定文件类型载入相关缩进文
filetype plugin indent on

" 设置自动补全的选项. longest表示只自动补全最大匹配的部分,剩余部分通过
" CTRL-P/CTRL-N来选择匹配项进行补全. menu表示弹出可补全的内容列表.
" 如果有多个匹配,longest选项不会自动选中并完整补全,要多按一次CTRL-P,比较
" 麻烦,不做设置,保持默认设置,vim默认没有设置longest.
"set completeopt=longest,menu "启用这句才会开启自动补全


" 新建 .sh, .sql, .hql 文件,自动插入文件头
autocmd BufNewFile *.sh,*.sql,*.hql exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头
func SetTitle()
    if &filetype == 'sh'
        call setline(1, "\#!/usr/bin/env zsh")
        call append(line("."),   "\################################")
        call append(line(".")+1, "\# FileName    : ".expand("%"))
        call append(line(".")+2, "\# Author      : quzhengpeng")
        call append(line(".")+3, "\# CreateTime  : ".strftime("%Y-%m-%d %H:%M:%S"))
        call append(line(".")+4, "\# Version     : 1.0")
        call append(line(".")+5, "\# Description : ")
        call append(line(".")+6, "\################################")
        call append(line(".")+7, "")
    elseif &filetype == 'hql'
        call setline(1, "--------------------------------")
        call append(line("."),   "-- FileName    : ".expand("%"))
        call append(line(".")+1, "-- Author      : quzhengpeng")
        call append(line(".")+2, "-- CreateTime  : ".strftime("%Y-%m-%d %H:%M:%S"))
        call append(line(".")+3, "-- Version     : 1.0")
        call append(line(".")+4, "-- Description : ")
        call append(line(".")+5, "--------------------------------")
        call append(line(".")+6, "")
    else
        call setline(1, "/*")
        call append(line("."),   "FileName    : ".expand("%"))
        call append(line(".")+1, "Author      : quzhengpeng")
        call append(line(".")+2, "CreateTime  : ".strftime("%Y-%m-%d %H:%M:%S"))
        call append(line(".")+3, "Version     : 1.0")
        call append(line(".")+4, "Description : ")
        call append(line(".")+5, "*/")
        call append(line(".")+6, "")
    endif
    " 新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc

