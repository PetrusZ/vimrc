"
" =====================================================================================
"
"       Filename:  .vimrc
"
"    Description:  vim配置文件
"
"        Version:  1.0
"        Created:  2013年11月16日 17时06分54秒
"
"         Author:  codeplayer(silencly07@gmail.com)
"      Copyright:  Copyright (c) 2013, codeplayer
"
" ====================================================================================
"
" -----------------------------------------------------------------------------
"  < edit setting >"{{{
" -----------------------------------------------------------------------------
set nocp                  " 设置不兼容vi
set expandtab             " 设置tab
set shiftwidth=4          " 设置tab的间隔
set tabstop=4             " 四个空格代表一个tab
set sts=4                 " 设置softtabstop为4
set showmatch             " 在输入括号时光标会短暂地跳到与之相匹配的括号处
set autoindent            " 设置自动缩进
"set smartindent          " 设置智能缩进
set nowrap                  " 不自动折行
set tw=500                " 设置textwidth为500
set lbr                   " 不在单词中间进行换行
set number                " 设置是否显示行
set guifont=Monospace\ 11 " 设置字体大小
set encoding=utf-8        " 设置编码为utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,GB18030,cp936,big5,euc-jp,euc-kr,latin1
set helplang=cn           " 帮助中文支持
set mouse=v               " 设置粘贴和复制
set ignorecase            " 设置搜索时忽略大小写
set hlsearch              " 高亮搜索结果
set completeopt=menu      " 取消omnicppcomplete预览窗口提示变量定义
set clipboard=unnamedplus " 设置剪贴板
set foldmethod=marker    " 设置折叠方式为标记折叠
"set foldmethod=indent     " 设置折叠方式为缩进折叠
"set foldlevel=500        " 默认打开所有折叠
set confirm               " 关闭时如果存在未保存的文件出现提示
set scrolloff=5           " 距离顶部或底部还有5行的时候就开始滚动屏幕
set complete-=k complete+=k     "将字典补全添加到默认补全列表中

syntax enable
filetype plugin indent on          "开启文件类型插件和缩进识别功能

" 设置主题颜色
if has('gui_running')
    set background=dark
    colorscheme solarized
    set guifont=Ubuntu\ Mono\ 12
    " let g:solarized_termcolors=256
else
    " set background=dark
    " colorscheme solarized
    colorscheme tango
    " colorscheme Tomorrow-Night
endif

" 手动折叠
"au BufWinLeave .vimrc silent mkview      "vimrc文件自动保存折叠
"au BufWinEnter .vimrc silent loadview    "vimrc自动载入折叠

"设置只在特定的文件类型才折行
" au FileType vimwiki set wrap
" au BufEnter * if &filetype == "" | set wrap | endif
" au BufEnter * if &filetype == "vimwiki" | set wrap | endif

au BufRead,BufNewFile .vimperatorrc		set filetype=vim
" -----------------------------------------------------------------------------"}}}
"  < 常用快捷键 > {{{
" -----------------------------------------------------------------------------
"<F1>       关闭Location list(syntastic窗口)
"<F2>       切换到下一个高亮书签，或下一个语法错误处
"<S-F2>     切换到上一个高亮书签，或上一个语法错误处
"<c-F2>     标记高亮书签
"<F3>       打开NERDTree
"<F4>       打开tagbar
"<F5>       打开Gundo tree
"<F6>       打开quickfix
"<F7>       跳转到下一处错误
"<s-F7>     跳转到上一处错误
"<F8>       Debug
"<F9>       编译
"<S-F9>     输入运行参数
"<C-F9>     运行
"<F10>      打开博客列表
"<C-F10>    将博文保存为草稿
"<A-F10>    在本地预览博文
"<F11>      终端最大、最小化
"<S-F11>    生成cscope文件
"<C-F11>    添加cscope文件
"<F12>      打开vimshell

"gD         查询变量，只在本文件中
"gd         查询变量, 只在本函数中
"[i         查询变量的定义
"[<Tab>     跳到变量定义的地方
"``         返回原处(仅在同一文件内有效)
"mm         标记高亮书签
",a         启动ag进行全局查找 :Ag [options] pattern [PATH]
",o         打开bufexplorer
",u         显示最近打开的文件
",h         取消搜索高亮显示
",c         清除所有无用的空格
",ev        快速打开.vimrc
",sv        快速重载.vimrc
"<C-o>      回到上次编辑的地方
"<C-e>      停止补全并回到原来文字
"<S-k>      普通模式:man在光标下的函数

" windows
" ----------------------------------------------------------------
"<C-c>      关闭分屏窗口
"<C-w><C-o> 将当前的分屏窗口最大化
"<C-j><C-k><C-h><C-l>   在分屏窗口间浏览

" macro
" ----------------------------------------------------------------
" qa 将之后的所有键盘操作录制下来，直到再次在命令模式按下q，并存储在a中 " @a 执行刚刚记录在a里面的键盘操作
" @@ 执行上一次的macro操作

" 十六进制编辑
" ----------------------------------------------------------------
":%!xxd     把所有的行(%)用本地(!)的xxd程序打开。
":%!xxd -r  返回正常显示
"xxd本是linux下一个显示、编辑、转换二进制的命令。

" cscope
" ----------------------------------------------------------------
"cfs:查找即查找C语言符号出现的地方
"cfg:查找函数、宏、枚举等定义的位置
"cfc:查找光标下的函数被调用的地方
"cft: 查找指定的字符串出现的地方
"cfe:egrep模式查找,相当于egrep功能
"cfn: 查找文件名,相当于lookupfile
"cfi: 查找当前文件名出现过的地方
"cfd: 查找本当前函数调用的函数

" Ultisnips
" ----------------------------------------------------------------
"<Tab>      snips模板补全
"jj         切换到补全的下一处
"kk         切换到补全的上一处
"<M-l>      打开snips模板补全列表

" minibufexpl
" ----------------------------------------------------------------
"<M-m>      切换到下一个buffer
"<M-n>      切换到上一个buffer
"<M-d>      删除当前buffer
"<M-h>      切换minibufexpl
",1-100     切换到第1-100个buffer

" Ctrlp
" ----------------------------------------------------------------
"<C-p>      打开Ctrlp进行查找
"<C-d>      更改匹配模式(文件|目录)
"<C-z>      标记要打开的文件
"<C-y>      建立新的文件或目录

" CtrlPFunky
" ----------------------------------------------------------------
"<Leader>fu      打开CtrlPFunky进行查找
"<Leader>fuw     打开CtrlPFunky查找光标下的词

" A.vim
" ----------------------------------------------------------------
":A switches to the header file corresponding to the current file being edited (or vise versa)
":AS splits and switches
":AV vertical splits and switches
":AT new tab and switches
":AN cycles through matches
":IH switches to file under cursor
":IHS splits and switches
":IHV vertical splits and switches
":IHT new tab and switches
":IHN cycles through matches
"<Leader>ih switches to file under cursor
"<Leader>is switches to the alternate file of file under cursor (e.g. on  <foo.h> switches to foo.cpp)
"<Leader>ihn cycles through matches

" CtrlSF
" ----------------------------------------------------------------
"<leader>f :CtrlSF <C-R><C-W><cr>
"<leader>rf :CtrlSFOpen<CR>
" In CtrlSF window:
"o, Enter - Jump to file that contains the line under cursor.
"t - Like o but open file in a new tab.
"p - Like o but open file in a preview window.
"O - Like o but always leave CtrlSF window opening.
"T - Lkie t but focus CtrlSF window instead of opened new tab.
"q - Quit CtrlSF window.
"<C-J> - Move cursor to next match.
"<C-K> - Move cursor to previous match.
"
" In preview window:
"q - Close preview window.

" vim-youdao-translater
" ----------------------------------------------------------------
" 在普通模式下，按 ctrl+t， 会翻译当前光标下的单词；
" 在 visual 模式下选中单词，按 ctrl+t，会翻译选择的单词；
" ,yd可以在命令行输入要翻译的单词；

" Tabular
" ----------------------------------------------------------------
" ,m=   按'='来对齐排版
" ,m:   按':'来对齐排版
" 其他  在n或v模式下，输入":Tabularize /," 按','来对对齐排版

" vim-pandoc
" ----------------------------------------------------------------
" <localleader>pdf      转换为PDF文件
" <localleader>pdf+     转换为PDF文件并打开
" <localleader>html     转换为html文件
" <localleader>html+    转换为html文件并打开
" <localleader>odt      转换为odt文件
" <localleader>odt+     转换为odt文件并打开
" <localleader>www      在浏览器中打开链接
" <localleader>gr       从引用链接跳到定义处
" <localleader>br       从定义处跳回
" <localleader>nr       从引用链接处创建一个引用定义（乱码）

" Tagbar
" ----------------------------------------------------------------
"s         可按正序和逆序排序
"<space>   在名称上按空格键可看到它的原型
"p         光标停在tagbar栏，而代码跳到目标位置
"<c-p>     跳到上一个类别
"<c-n>     跳到下一个类别
"x         在放大和还原tagbar栏间切换
"q         关闭tagbar栏

" surround插件
" ----------------------------------------------------------------
" Normal mode
" -----------
"ds  - delete a surrounding
"cs  - change a surrounding
"ys  - add a surrounding
"yS  - add a surrounding and place the surrounded text on a new line + indent it
"yss - add a surrounding to the whole line
"ySs - add a surrounding to the whole line, place it on a new line + indent it
"
"删除包围符号的命令是ds,后面加的字符表示要删除的符号比如：
""Hello *world!"           ds"         Hello world!
"替换包围符号的命令是cs,命令后跟两个参数，分别是被替换的符号和需要使用的符号。比如
""Hello *world!"           cs"'        'Hello world!'
"添加包围符号的命令是ys(ys可以记为you surround)，命令后同样跟两个参数，第一个是一个vim“动作”（motion）或者是一个文本对象。
"其中motion即vim动作，比如说w向后一个单词。文本对象简单的来说主要是来通过一些分隔符来标识一段文本，比如iw就是一个文本对象，即光标下的单词。
"
" Visual mode
" -----------
"s   - in visual mode, add a surrounding(key mapping error)
"S   - in visual mode, add a surrounding but place text on new line + indent it


" nerdcommenter插件
" ----------------------------------------------------------------
",ca   在可选的注释方式之间切换，比如C/C++的块注释/**/和行注释//
",cc   注释当前行
",c    切换注释/非注释状态
",cs   以”性感”的方式注释
",cA   在当前行尾添加注释符，并进入Insert模式
",cu   取消注释
",cl   注释当前行
"Normal模式下，几乎所有命令前面都可以指定行数
"Visual模式下执行命令，会对选中的特定区块进行注释/反注释

" EasyMotion
"EasyMotion_leader_key = '.'
" ----------------------------------------------------------------
" Mapping           | Details
" ------------------|----------------------------------------------
" <Leader>f{char}   | Find {char} to the right. See |f|.
" <Leader>F{char}   | Find {char} to the left. See |F|.
" <Leader>t{char}   | Till before the {char} to the right. See |t|.
" <Leader>T{char}   | Till after the {char} to the left. See |T|.
" <Leader>w         | Beginning of word forward. See |w|.
" <Leader>W         | Beginning of WORD forward. See |W|.
" <Leader>b         | Beginning of word backward. See |b|.
" <Leader>B         | Beginning of WORD backward. See |B|.
" <Leader>e         | End of word forward. See |e|.
" <Leader>E         | End of WORD forward. See |E|.
" <Leader>ge        | End of word backward. See |ge|.
" <Leader>gE        | End of WORD backward. See |gE|.
" <Leader>j         | Line downward. See |j|.
" <Leader>k         | Line upward. See |k|.
" <Leader>n         | Jump to latest "/" or "?" forward. See |n|.
" <Leader>N         | Jump to latest "/" or "?" backward. See |N|.

" CRefVim
" ----------------------------------------------------------------
"<Leader>cr normal mode:  get help for word under cursor
"                         Memory aid cr: (c)-(r)eference
"<Leader>cr visual mode:  get help for visually selected text
"                         Memory aid cr: (c)-(r)eference
"<Leader>cw:              prompt for word CRefVim should search for
"                         Memory aid cw: (c)-reference (w)hat
"<Leader>cc:              jump to table of contents of the C-reference manual
"                           Memory aid cc: (c)-reference (c)ontents
"Note: by default <Leader> is \, e.g. press \cr to invoke C-reference
"
"Note: The best way to search for an operator (++, --, %, ...) is to visually
"select it and press <Leader>cr.
"To get help do :help crefvimdoc
"To show the C-reference manual do :help crefvim
" -----------------------------------------------------------------------------}}}
"  < 键盘映射 配置 >"{{{
" -----------------------------------------------------------------------------
" easier navigation between split windows
let g:C_Ctrl_j = 'off'      "turn off the csupport plugin jump insert feature.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-c> <c-w>c

" w!!强制sudo存储
cmap w!! %!sudo tee >/dev/null %

let mapleader=","   "将<Leader>改为','键
let g:EasyMotion_leader_key = '.'  " easy-motion
" let g:EasyMotion_leader_key = '<Leader>'  " easy-motion

imap <C-l> /*
imap jk <Esc>
map <leader>u :MRU<CR>
map <leader>o :BufExplorer<CR>
map <silent> <leader>h :noh<CR>
" quickfix
nmap <silent> <F1> :call QLSwitch(0)<CR>
nmap <silent> <F6> :call QFixToggle(1)<CR>
map <F7> :cn<CR>
map <s-F7> :cp<CR>
map <F12> :VimShell -buffer-name=<CR>
" nnoremap <leader>a :Ack
nnoremap <leader>a :Ag <C-R><C-W><cr>
nnoremap <leader>f :CtrlSF <C-R><C-W><cr>
nnoremap <leader>rf :CtrlSFOpen<CR>
map <Leader>c :FixWhitespace<cr>

" vimrepress
map <F10> :BlogList<cr>
map <C-F10> :BlogSave draft<cr>
map <A-F10> :BlogPreview local<cr>

" Tabular plugin
nmap <Leader>m= :Tabularize /=<CR>
vmap <Leader>m= :Tabularize /=<CR>
nmap <Leader>m: :Tabularize /:\zs<CR>
vmap <Leader>m: :Tabularize /:\zs<CR>

" vim-youdao-translater
vnoremap <silent> <Leader>t <Esc>:Ydv<CR>
nnoremap <silent> <Leader>t <Esc>:Ydc<CR>
noremap <leader>yd :Yde<CR>

" Map Goyo toggle to <Leader> + space
nnoremap <Leader><Space> :Goyo<CR>
let g:goyo_width = 100

" vim-markdown
let g:vim_markdown_folding_disabled=1

" ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fuw :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" nnoremap <Leader>+ <Plug>(expand_region_expand)
" nnoremap <Leader>- <Plug>(expand_region_shrink)

" switching to buffer 1 - 9 is mapped to Alt-<buffer_no>
for buffer_no in range(1, 9)
  execute "nmap <A-" . buffer_no . "> :b" . buffer_no . "\<CR>"
endfor

" switching to buffer 1 - 9 is mapped to ,[nOfBuffer]
for buffer_no in range(1, 9)
  execute "nmap <Leader>" . buffer_no . " :b" . buffer_no . "\<CR>"
endfor

" switching to buffer 10 - 100 is mapped to ,0[nOfBuffer]
for buffer_no in range(10, 100)
  execute "nmap <Leader>0" . buffer_no . " :b" . buffer_no . "\<CR>"
endfor
" -----------------------------------------------------------------------------"}}}
"  < 修复功能键 配置 >"{{{
" -----------------------------------------------------------------------------
"execute "set <xUp>=\e[1;*A"
"execute "set <xDown>=\e[1;*B"
"execute "set <xRight>=\e[1;*C"
"execute "set <xLeft>=\e[1;*D"
"execute "set <xHome>=\e[1;*H"
"execute "set <xEnd>=\e[1;*F"
"execute "set <PageUp>=\e[5;*~"
"execute "set <PageDown>=\e[6;*~"
execute "set <F1>=\eOP"
execute "set <F2>=\eOQ"
execute "set <F3>=\eOR"
execute "set <F4>=\eOS"
execute "set <xF1>=\eO1;*P"
execute "set <xF2>=\eO1;*Q"
execute "set <xF3>=\eO1;*R"
execute "set <xF4>=\eO1;*S"
execute "set <F5>=\e[15;*~"
execute "set <F6>=\e[17;*~"
execute "set <F7>=\e[18;*~"
execute "set <F8>=\e[19;*~"
execute "set <F9>=\e[20;*~"
execute "set <F10>=\e[21;*~"
execute "set <F11>=\e[23;*~"
execute "set <F12>=\e[24;*~"

set ttimeoutlen=1
for UseAlt in range (65 , 90 ) + range ( 97 , 122)
        exe "set <M-" .nr2char(UseAlt).">=\<Esc>" .nr2char (UseAlt)
endfor
" -----------------------------------------------------------------------------"}}}
" < GUI模式 配置 >"{{{
" -----------------------------------------------------------------------------
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    " set t_Co=256
    set guitablabel=%M\ %t
endif
" -----------------------------------------------------------------------------"}}}
"  < 自动切换目录 配置 >{{{
" -----------------------------------------------------------------------------
" 可以自动切换到文件所在的目录
if has("autocmd")
  autocmd BufEnter * :lchdir %:p:h
endif
" -----------------------------------------------------------------------------"}}}
"  < 高亮当前位置 配置>"{{{
" -----------------------------------------------------------------------------
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline nocursorcolumn
"set cursorline "cursorcolumn
" -----------------------------------------------------------------------------"}}}
"  < 持久性撤销 配置 >"{{{
" -----------------------------------------------------------------------------
let $VIMTEMP = '/tmp'
if v:version >= 703
  set undofile
  set undodir=$VIMTEMP
  set undolevels=500 "maximum number of changes that can be undone
  set undoreload=10000 "maximum number lines to save for undo on a buffer
endif
" -----------------------------------------------------------------------------"}}}
"  < 括号自动补全 配置 >"{{{
" -----------------------------------------------------------------------------
" :inoremap ( ()<ESC>i
" :inoremap ) <c-r>=ClosePair(')')<CR>
" :inoremap { {}<ESC>i
" :inoremap } <c-r>=ClosePair('}')<CR>
" :inoremap [ []<ESC>i
" :inoremap ] <c-r>=ClosePair(']')<CR>
" ":inoremap < <><ESC>i
" :inoremap > <c-r>=ClosePair('>')<CR>
"
" function ClosePair(char)
"     if getline('.')[col('.') - 1] == a:char
"         return "\<Right>"
"     else
"         return a:char
"     endif
" endfunction
" -----------------------------------------------------------------------------"}}}
"  < 回到上次编辑的位置 配置 >"{{{
" -----------------------------------------------------------------------------
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \ exe "normal g'\"" |
      \ endif |
      \ endif
" -----------------------------------------------------------------------------"}}}
" < 快速编辑/重载vimrc 配置 >"{{{
" -----------------------------------------------------------------------------
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" -----------------------------------------------------------------------------"}}}"
"  < 一键打开、关闭quickfix 配置>"{{{
" -----------------------------------------------------------------------------
command! -bang -nargs=? QFix call QFixToggle(<bang>0)

function! QFixToggle(forced)
    if exists("g:qfix_win") && a:forced != 0
        cclose
    else
        if exists("g:my_quickfix_win_height")
            execute "copen ".g:my_quickfix_win_height
        else
            copen
        endif
    endif
endfunction

augroup QFixToggle
    autocmd!
    autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
    autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END
" -----------------------------------------------------------------------------"}}}
"  < 一键打开、关闭location 配置>"{{{
" -----------------------------------------------------------------------------
function! QLSwitch(forced2)
   if exists("g:qloc_win") && a:forced2 == 0
     lclose
     unlet g:qloc_win
   else
     lopen 10
     let g:qloc_win = bufnr("Location")
   endif
endfunction
" -----------------------------------------------------------------------------"}}}
"  < supertab插件与complete 配置 >"{{{
" -----------------------------------------------------------------------------
let g:SuperTabCrMapping = 0
" let g:SuperTabMappingForward = '<tab>'
" let g:SuperTabMappingBackward = '<s-tab>'
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabRetainCompletionType=2
" 0 - 不记录上次的补全方式
" 1 - 记住上次的补全方式,直到用其他的补全命令改变它
" 2 - 记住上次的补全方式,直到按ESC退出插入模式为止
"
let g:SuperTabDefaultCompletionType="<C-P>"
" 设置按下<Tab>后默认的补全方式, 默认是<C-P>,
" 还有其他的补全方式, 你可以看看下面的一些帮助:
" :help ins-completion
" :help compl-omni
"
" 'complete' 'cpt'	字符串	(缺省: ".,w,b,u,t,i")
" ':help cpt' to see more
set cpt=.,b,t,i,d,k/home/silence/.vim/bundle/c.vim/c-support/wordlists/c-c++-keywords.list
" -----------------------------------------------------------------------------"}}}
"  < Tagbar 插件配置 >""{{{
" -----------------------------------------------------------------------------
nmap <F4> :TagbarToggle<cr>
let g:tagbar_left=0
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" -----------------------------------------------------------------------------"}}}
"  < ctags 插件配置 >"{{{
" -----------------------------------------------------------------------------
" map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
map <C-F12> :!ctags -R --c++-kinds=+lp --c-kinds=+lp  --fields=+iaS --extra=+q .<CR><CR>
"将系统已经生成的tags导入
"set tags+=~/.vim/systags
"
"自动递归查找tags文件
" set autochdir
" set tags=tags;
" -----------------------------------------------------------------------------"}}}
"  < cscope 插件配置 >"{{{
" -----------------------------------------------------------------------------
if has("cscope")
    set cscopetag   " 使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳来跳去
    " 如果 'csto' 被设为 0，cscope 数据库先被搜索，搜索失败的情况下在搜索标签文件。
    " 如果 'csto' 被设为 1，标签文件会在cscope 数据库之前被搜索。
    set csto=1
    " 总同时搜索 cscope 数据库和标签文件
    " set cst
    " 是否使用 quickfix 窗口来显示 cscope 结果
    set cscopequickfix=s-,c-,d-,i-,t-,e-

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add the database pointed to by environment variable
    elseif $CSCOPE_DB !=""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose

    map <S-F11> :!cscope -Rbq<CR><CR>
    map <C-F11> :cs add cscope.out .<CR>

    "s:查找即查找C语言符号出现的地方
    nmap cfs :cs find s <C-R>=expand("<cword>")<CR><CR>
    "g:查找函数、宏、枚举等定义的位置
    nmap cfg :cs find g <C-R>=expand("<cword>")<CR><CR>
    "c:查找光标下的函数被调用的地方
    nmap cfc :cs find c <C-R>=expand("<cword>")<CR><CR>
    "t: 查找指定的字符串出现的地方
    nmap cft :cs find t <C-R>=expand("<cword>")<CR><CR>
    "e:egrep模式查找,相当于egrep功能
    nmap cfe :cs find e <C-R>=expand("<cword>")<CR><CR>
    "f: 查找文件名,相当于lookupfile
    nmap cfn :cs find f <C-R>=expand("<cfile>")<CR><CR>
    "i: 查找当前文件名出现过的地方
    nmap cfi :cs find i <C-R>=expand("<cfile>")<CR><CR>
    "d: 查找本当前函数调用的函数
    nmap cfd :cs find d <C-R>=expand("<cword>")<CR><CR>

   " " 查找C语言符号，即查找函数名、宏、枚举值等出现的地方
   " nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
   " " 查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
   " nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
   " " 查找本函数调用的函数
   " nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>
   " " 查找调用本函数的函数
   " nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
   " " 查找指定的字符串
   " nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
   " " 查找egrep模式，相当于egrep功能，但查找速度快多了
   " nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
   " " 查找并打开文件，类似vim的find功能
   " nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
   " " 查找包含本文件的文件
   " nmap <C-/>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
endif
" -----------------------------------------------------------------------------"}}}
"  < Gundo 插件配置 >"{{{
" -----------------------------------------------------------------------------
nnoremap <F5> :GundoToggle<CR>
let g:gundo_playback_delay=30
" -----------------------------------------------------------------------------"}}}
"  < ctrlp 插件配置 >"{{{
" -----------------------------------------------------------------------------
let g:ctrlp_open_multiple_files = 'i'   "hidden in buffer
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store,.jpg,.png,.tar,.doc,.pdf " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
" -----------------------------------------------------------------------------"}}}
"  < Ultisnips 插件配置 >"{{{
" -----------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="kk"
let g:UltiSnipsJumpBackwardTrigger="jj"
let g:UltiSnipsListSnippets="<M-l>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"let g:ulti_expand_or_jump_res = 0 "default value, just set once
"function! Ulti_ExpandOrJump_and_getRes()
"    call UltiSnips_ExpandSnippetOrJump()
"    return g:ulti_expand_or_jump_res
"endfunction
"
"inoremap <tab> <C-R>=(Ulti_ExpandOrJump_and_getRes() > 0)?"":IMAP_Jumpfunc('', 0)<CR>
" -----------------------------------------------------------------------------"}}}
"  < nerdcommenter 插件配置 >"{{{
" -----------------------------------------------------------------------------
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1
" -----------------------------------------------------------------------------"}}}
"  < clang_complete 插件配置 >"{{{
" -----------------------------------------------------------------------------
let g:clang_complete_auto = 1
let g:clang_auto_select = 1
let g:clang_use_library = 1
let g:clang_complete_copen=1
let g:clang_hl_errors=1
let g:clang_periodic_quickfix=0
let g:clang_snippets=1
let g:clang_snippets_engine="clang_complete"
let g:clang_close_preview=1
let g:clang_trailing_placeholder=0
"let g:clang_exec="clang"
"let g:clang_user_options="-std=c++11"
let g:clang_library_path="/usr/lib/llvm-3.4/lib"
let g:clang_complete_macros=1
let g:clang_complete_patterns=1
"let g:clang_auto_user_options="path, .clang_complete, compile_commands.json"

let g:clang_jumpto_declaration_key='<M-.>'
let g:clang_jumpto_back_key='<M-,>'

if has('conceal')
    let g:clang_conceal_snippets=1
endif
" -----------------------------------------------------------------------------"}}}
"  < vimshell 插件配置 >"{{{
" -----------------------------------------------------------------------------
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_enable_smart_case = 1

" Display user name on Linux.
let g:vimshell_prompt = $USER."% "

autocmd FileType vimshell
            \ call vimshell#altercmd#define('g', 'git')
            \| call vimshell#altercmd#define('i', 'iexe')
            \| call vimshell#altercmd#define('l', 'll')
            \| call vimshell#altercmd#define('ll', 'ls -l')
            \| call vimshell#hook#add('chpwd', 'my_chpwd', 'g:my_chpwd')

function! g:my_chpwd(args, context)
    call vimshell#execute('ls')
endfunction

autocmd FileType int-* call s:interactive_settings()
function! s:interactive_settings()
endfunction
" -----------------------------------------------------------------------------"}}}
" "  < neocomplete 配置 >"{{{
" " -----------------------------------------------------------------------------
" "Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" " Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" " Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" " let g:neocomplete#sources#syntax#min_keyword_length = 4
" " let g:neocomplete#force_overwrite_completefunc = 1
" let g:neocomplete#auto_completion_start_length = 3
" let g:neocomplete#enable_fuzzy_completion = 0

" " clang_complete
" if !exists('g:neocomplete#force_omni_input_patterns')
    " let g:neocomplete#force_omni_input_patterns = {}
" endif
" let g:neocomplete#force_overwrite_completefunc = 1
" let g:neocomplete#force_omni_input_patterns.c =
            " \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
" let g:neocomplete#force_omni_input_patterns.cpp =
            " \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
" let g:neocomplete#force_omni_input_patterns.objc =
            " \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
" let g:neocomplete#force_omni_input_patterns.objcpp =
            " \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

" " 关闭自动弹出功能，手动启动
" let g:neocomplete#disable_auto_complete = 1

" " Define dictionary.
" let g:neocomplete#sources#dictionary#dictionaries = {
            " \ 'default' : '',
            " \ 'c' : '/home/silence/.vim/bundle/c.vim/c-support/wordlists/c-c++-keywords.list'
            " \ }

" " Plugin key-mappings.
" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()

" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
  " return neocomplete#close_popup() . "\<CR>"
" endfunction
" " <TAB>: completion.
" " inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " inoremap <expr><s-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplete#close_popup()
" inoremap <expr><C-e>  neocomplete#cancel_popup()

" " For smart TAB completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-p>" :
       " \ <SID>check_back_space() ? "\<TAB>" :
       " \ neocomplete#start_manual_complete()
" inoremap <expr><s-TAB>  pumvisible() ? "\<C-n>" :
       " \ <SID>check_back_space() ? "\<TAB>" :
       " \ neocomplete#start_manual_complete()
 function! s:check_back_space() "{{{
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~ '\s'
 endfunction"}}}
" -----------------------------------------------------------------------------"}}}
" "  < neosnippet 配置 >"{{{
" " -----------------------------------------------------------------------------
" " Plugin key-mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

" " SuperTab like snippets behavior.
" imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: pumvisible() ? "\<C-n>" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: "\<TAB>"
" " imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            " " \ "\<Plug>(neosnippet_expand_or_jump)"
            " " \: pumvisible() ? "\<C-p>" :
            " " \ <SID>check_back_space() ? "\<TAB>":
            " " \ neocomplete#start_manual_complete()
" " smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            " " \ "\<Plug>(neosnippet_expand_or_jump)"
            " " \: "\<TAB>"

" " For snippet_complete marker.
" if has('conceal')
  " set conceallevel=2 concealcursor=i
" endif

" " Enable snipMate compatibility feature.
" "let g:neosnippet#enable_snipmate_compatibility = 1

" " Tell Neosnippet about the other snippets
" "let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
" -----------------------------------------------------------------------------"}}}
"  < vim-powerline 插件配置 >"{{{
" -----------------------------------------------------------------------------
set laststatus=2    "总是显示状态栏
set t_Co=256    "终端启用256色
let g:Powerline_symbols = 'fancy'
let g:Powerline_stl_path_style = 'full'
" let g:Powerline_symbols = 'unicode'
set encoding=utf8
" -----------------------------------------------------------------------------"}}}
"  < vim-pandoc 插件配置 >"{{{
" -----------------------------------------------------------------------------
let maplocalleader = ","
let g:pandoc_no_folding = 1
" -----------------------------------------------------------------------------"}}}
"  < vimwiki 插件配置 >"{{{
" -----------------------------------------------------------------------------
:map <Space> <Plug>VimwikiToggleListItem
map <leader>wha :VimwikiAll2HTML<cr>
" let g:vimwiki_list = [{'path': '~/vimwiki/',
"     \ 'path_html': '~/vimwiki/html/',
"     \ 'template_path': '~/vimwiki/template/',
"     \ 'template_default': 'template',
"     \ 'template_ext': '.html'}]
let g:vimwiki_list = [{'path': '~/vimwiki',
    \    'path_html': '~/vimwiki/html/',
    \    'template_path': '~/vimwiki/template',
    \    'template_default': "default.tpl"}]
let g:vimwiki_camel_case = 0
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_folding = 1
let g:vimwiki_browsers = ['firefox']
let g:vimwiki_CJK_length = 1
let g:vimwiki_dir_link = 'index'
" let g:vimwiki_html_header_numbering = 1
let g:vimwiki_conceallevel = 2
" let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,del,br,hr,div,code,h1'
let g:vimwiki_valid_html_tags = 'div, span, table, td, pre, tr'
" -----------------------------------------------------------------------------"}}}
"  < syntastic 插件配置 >"{{{
" -----------------------------------------------------------------------------
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list = 2
let g:syntastic_loc_list_height = 5
let g:syntastic_enable_highlighting = 0
let g:syntastic_always_populate_loc_list = 1
" -----------------------------------------------------------------------------"}}}
"  < minibufexpl 插件配置 >"{{{
" -----------------------------------------------------------------------------
let g:miniBufExplCycleArround = 1
" let g:did_minibufexplorer_syntax_inits = 1

"noremap <C-m> :MBEbn<CR>
"noremap <C-n> :MBEbp<CR>
noremap <M-m> :MBEbb<CR>
noremap <M-n> :MBEbf<CR>
map <M-d> :MBEbd<CR>
map <M-h> :MBEToggle<cr>

" nnoremap <M-d> :bdelete<CR>

" hi MBENormal               ctermfg=214
" hi MBEChanged              ctermfg=1
hi link MBENormal           Special
hi link MBEChanged          PreProc
" hi MBEVisibleNormal        ctermfg=5
" hi MBEVisibleNormalActive  ctermfg=13
" hi MBEVisibleChanged       ctermfg=7
" hi MBEVisibleChangedActive ctermfg=9
" -----------------------------------------------------------------------------"}}}
"  < MRU 插件配置 >"{{{
" -----------------------------------------------------------------------------
"let MRU_File='/tmp/mru_files'                       "设置默认保存最近打开文件列表的文件，默认$HOME/.vim_mru_files；
let MRU_Max_Entries = 1000                          "设置默认记录的打开文件数量，默认100；
let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'    "设置默认不包含哪些文件，默认空；
let MRU_Include_Files = '\.c$\|\.h$'                "设置默认只包含哪些文件，默认空；
let MRU_Window_Height = 15                          "设置MRU窗口的高度，默认8；
"let MRU_Use_Current_Window = 1                      "设置默认在本窗口打开最近文件列表，而不是新的窗口；
let MRU_Auto_Close = 0                              "设置默认不关闭MRU窗口，默认关闭；
let MRU_Max_Menu_Entries = 20                       "设置MRU窗口默认显示多少条记录，默认10；
let MRU_Max_Submenu_Entries = 15                    "设置MRU窗口默认子菜单显示多少条记录，默认10。
"如果有太多的记录显示在MRU窗口时，记录会被分割成子菜单，该配置设置子菜单里显示多少条记录；
" -----------------------------------------------------------------------------"}}}
"  < NERDTree 插件配置 >"{{{
" -----------------------------------------------------------------------------
map <F3> :NERDTreeToggle<CR>
"map <F5> t :NERDTreeMirror<CR>

"let loaded_nerd_tree=1    " 禁用所有与NERD_tree有关的命令
"let NERDTreeIgnore=['/.vim$','/~$']    " 不显示指定的类型的文件
"let NERDTreeShowHidden=0    " 不显示隐藏文件(好像只在linux环境中有效)
"let NERDTreeSortOrder=['//$','/.cpp$','/.c$','/.h$', '*']    " 排序
let NERDTreeCaseSensitiveSort=0     " 不分大小写排序
let NERDTreeWinSize=30
"let NERDTreeShowLineNumbers=1
let NERDTreeShowBookmarks=1
"let NERDTreeQuitOnOpen=1    " 打开文件后, 关闭NERDTrre窗口
"let NERDTreeHighlightCursorline=1     " 高亮NERDTrre窗口的当前行
"nmap <silent> <leader>tmk :Bookmark expand(/"<cword>/")<cr>
" -----------------------------------------------------------------------------"}}}
"  < indentLine 插件配置 >"{{{
" -----------------------------------------------------------------------------
" 用于显示对齐线，与 indent_guides 在显示方式上不同，根据自己喜好选择了
" 在终端上会有屏幕刷新的问题，这个问题能解决有更好了
" 开启/关闭对齐线
nmap <leader>il :IndentLinesToggle<CR>

" let g:indentLine_enabled = 1
" let g:indentLine_loaded = 1

" 设置Gvim的对齐线样式
let g:indentLine_char = "│"

" 设置终端对齐线颜色
" let g:indentLine_color_term = 239
"
" 设置 GUI 对齐线颜色
" let g:indentLine_color_gui = '#A4E57E'
" -----------------------------------------------------------------------------"}}}
"  < Rainbow Parentheses 插件配置 >"{{{
" -----------------------------------------------------------------------------
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" -----------------------------------------------------------------------------"}}}
"  < 一键编译、调试 配置 >"{{{
" -----------------------------------------------------------------------------
"map <F8> :w<CR>:call CompileRun()<CR>
map <F8> :w<CR>:call Debug()<CR><CR><CR>
"
"func CompileRun()
"    exec "w"
"    if &filetype == 'c'
"        exec "!gcc % -g -o %<"
"        exec "!.\/%<"
"    elseif &filetype =='cpp'
"        exec "!g++ % -g -o %<"
"        exec "!.\/%<"
"    elseif &filetype == 'python'
"        exec "!python %"
"    endif
"endfunc
"
func Debug()
    exec "w"
    if &filetype == 'c'
        exec "!rm %<"
        exec "!gcc % -g -o %<"
        exec "!gdb %<"
    elseif &filetype == 'cpp'
        exec "!rm %<"
        exec "!g++ % -g -o %<"
        exec "!gdb %<"
        exec "!rm %<.class"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!jdb %<"
    elseif &filetype == 'python'
        exec "!pdb %"
    endif
endfunc
" -----------------------------------------------------------------------------}}}
"  < Vundle 插件管理工具配置 >"{{{
" -----------------------------------------------------------------------------
set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" Code Completions
" Plugin 'Shougo/neocomplete.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Rip-Rip/clang_complete'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'Shougo/neosnippet.vim'
" Fast navigation
Plugin 'tsaleh/vim-matchit'
Plugin 'Lokaltog/vim-easymotion'
" Fast editing
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'godlygeek/tabular'
" IDE features
Plugin 'Kris2k/A.vim'
Plugin 'majutsushi/tagbar'
" Plugin 'mileszs/ack.vim'
" Plugin 'spf13/PIV'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'brookhong/cscope.vim'
Plugin 'fholgado/minibufexpl.vim'
" Plugin 'terryma/vim-expand-region'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'bronson/vim-trailing-whitespace'
" Other Util
Plugin 'vimwiki/vimwiki'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-pandoc-after'
Plugin 'ianva/vim-youdao-translater'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'lilydjwg/fcitx.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-scripts/TaskList.vim'

" Plugin 'bufexplorer.zip'
Plugin 'c.vim'
Plugin 'Visual-Mark'
" Plugin 'CRefVim'
Plugin 'mru.vim'
Plugin 'VimRepress'
Plugin 'sjas/csExplorer'
"
"Plugin 'git://git.wincent.com/command-t.git'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on     " required!
"
" Brief help  -- 此处后面都是vundle的使用命令
" :PluginList          - list configured Plugins
" :PluginInstall(!)    - install(update) Plugins
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused Plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..
" -----------------------------------------------------------------------------"}}}
