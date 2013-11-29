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
set wrap                  " 不自动折行
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

colorscheme tango           "设置主体颜色
filetype plugin indent on          "开启文件类型插件和缩进识别功能

" 手动折叠
"au BufWinLeave .vimrc silent mkview      "vimrc文件自动保存折叠
"au BufWinEnter .vimrc silent loadview    "vimrc自动载入折叠
" -----------------------------------------------------------------------------"}}}
"  < 常用快捷键 > {{{
" -----------------------------------------------------------------------------
"<F1>       关闭Location list(syntastic窗口)
"<F2>       切换到下一个高亮书签，或下一个语法错误处
"<S-F2>     切换到上一个高亮书签，或上一个语法错误处
"<c-F2>     标记高亮书签
"<F3>       打开taglist
"<F4>       打开NERDTree
"<F5>       打开Gundo tree
"<F6>       打开quickfix
"<F7>       跳转到下一处错误
"<s-F7>     跳转到上一处错误
"<F8>       Debug
"<F9>       编译
"<S-F9>     输入运行参数
"<C-F9>     运行
"<F10>      打开博客列表
"<F11>      终端最大、最小化
"<S-F11>    生成cscope文件
"<C-F11>    添加cscope文件
"<F12>      打开vimshell

"mm         标记高亮书签
",a         启动ag进行全局查找 :Ag [options] pattern [PATH]
",o         打开bufexplorer
",u         显示最近打开的文件
",h         取消搜索高亮显示
",c         清除所有无用的空格
",ev        快速打开.vimrc
",sv        快速重载.vimrc
"<C-e>      停止补全并回到原来文字
"<S-k>      普通模式:man在光标下的函数   插入模式：补全snippets模板

" windows
" ----------------------------------------------------------------
"<C-c>      关闭分屏窗口
"<C-w><C-o> 将当前的分屏窗口最大化
"<C-j><C-k><C-h><C-l>   在分屏窗口间浏览

" macro
" ----------------------------------------------------------------
" qa 将之后的所有键盘操作录制下来，直到再次在命令模式按下q，并存储在a中
" @a 执行刚刚记录在a里面的键盘操作
" @@ 执行上一次的macro操作

" Ctrlp
" ----------------------------------------------------------------
"<C-p>      打开Ctrlp进行查找
"<C-d>      更改匹配模式(文件|目录)
"<C-z>      标记要打开的文件
"<C-y>      建立新的文件或目录

" Tabular
" ----------------------------------------------------------------
" ,m=   按'='来对齐排版
" ,m:   按':'来对齐排版
" 其他  在n或v模式下，输入":Tabularize /," 按','来对对齐排版

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
let g:EasyMotion_leader_key = '<Leader>'  " easy-motion

:imap jj <Esc>
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
nnoremap <leader>a :Ag 
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
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap < <><ESC>i
:inoremap > <c-r>=ClosePair('>')<CR>

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
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
"  < Tagbar 插件配置 >""{{{
" -----------------------------------------------------------------------------
nmap <F3> :TagbarToggle<cr>
let g:tagbar_left=0
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" -----------------------------------------------------------------------------"}}}
"  < ctags 插件配置 >"{{{
" -----------------------------------------------------------------------------
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
"将系统已经生成的tags导入
"set tags+=~/.vim/systags
" -----------------------------------------------------------------------------"}}}
"  < cscope 插件配置 >"{{{
" -----------------------------------------------------------------------------
if has("cscope")
    set cscopetag   " 使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳来跳去
    " check cscope for definition of a symbol before checking ctags:
    " set to 1 if you want the reverse search order.
    set csto=1
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


    " 查找C语言符号，即查找函数名、宏、枚举值等出现的地方
    nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    " 查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
    nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    " 查找本函数调用的函数
    nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>
    " 查找调用本函数的函数
    nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    " 查找指定的字符串
    nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    " 查找egrep模式，相当于egrep功能，但查找速度快多了
    nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    " 查找并打开文件，类似vim的find功能
    nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    " 查找包含本文件的文件
    nmap <C-/>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
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
"  < nerdcommenter 插件配置 >"{{{
" -----------------------------------------------------------------------------
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1
" -----------------------------------------------------------------------------"}}}
"  < supertab 插件配置 >"{{{
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
"let g:SuperTabDefaultCompletionType="<C-X><C-U>"
" 设置按下<Tab>后默认的补全方式, 默认是<C-P>,
" 还有其他的补全方式, 你可以看看下面的一些帮助:
" :help ins-completion
" :help compl-omni
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
""let g:clang_exec="clang"
"let g:clang_user_options="-std=c++11"
""let g:clang_library_path="/usr/lib"
let g:clang_complete_macros=1
let g:clang_complete_patterns=1
"let g:clang_auto_user_options="path, .clang_complete, compile_commands.json"
"
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
"  < vimwiki 插件配置 >"{{{
" -----------------------------------------------------------------------------
:map <Space> <Plug>VimwikiToggleListItem
map <leader>wha :VimwikiAll2HTML<cr>
let g:vimwiki_list = [{'path': '~/vimwiki/',
    \ 'path_html': '~/vimwiki/html/',
    \ 'template_path': '~/vimwiki/template/',
    \ 'template_default': 'template',
    \ 'template_ext': '.html'}]
let g:vimwiki_camel_case = 0
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_folding = 1
let g:vimwiki_browsers = ['firefox']
let g:vimwiki_CJK_length = 1
let g:vimwiki_dir_link = 'index'
" let g:vimwiki_html_header_numbering = 1
let g:vimwiki_conceallevel = 2
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,del,br,hr,div,code,h1'
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
"  < minibufexp 插件配置 >"{{{
" -----------------------------------------------------------------------------
"let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1     "使用ctrl和方向键在窗口间切换
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
map <F4> :NERDTreeToggle<CR>
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

" 设置Gvim的对齐线样式
"let g:indentLine_char = "┊"
"let g:indentLine_first_char = "┊"

" 设置终端对齐线颜色
"let g:indentLine_color_term = 239
"
" 设置 GUI 对齐线颜色
" let g:indentLine_color_gui = '#A4E57E'
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

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
"使用vundle插件管理器管理自身
Bundle 'gmarik/vundle'

"vundel管理的插件，有三种类型
" My Bundles here:
"
"格式1：Github上其他用户的仓库（非vim-scripts账户里的仓库，所以要加Github用户名）
" original repos on github
" Code Completions
" Bundle 'Shougo/neocomplete.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'Rip-Rip/clang_complete'
Bundle 'ervandew/supertab'
" snippets
"Bundle 'Shougo/neosnippet.vim'
"Bundle 'garbas/vim-snipmate'
"Bundle 'honza/vim-snippets'
" snipmate dependencies
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
" Fast navigation
Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'
" Fast editing
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
" IDE features
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'bronson/vim-trailing-whitespace'
" Other Util
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/vimshell.vim'
Bundle 'Shougo/unite.vim'
Bundle 'vimwiki/vimwiki'
Bundle 'rking/ag.vim'
Bundle 'mattn/calendar-vim'

"格式2：vim-scripts里面的仓库，直接打仓库名即可。
" vim-scripts repos
" Bundle 'The-NERD-tree'
Bundle 'minibufexpl.vim'
Bundle 'bufexplorer.zip'
Bundle 'c.vim'
"Bundle 'a.vim'
Bundle 'Visual-Mark'
Bundle 'CRefVim'
Bundle 'mru.vim'
Bundle 'indentLine.vim'
Bundle 'snipMate'
Bundle 'VimRepress'
"
"格式3：非Github的Git仓库
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" -----------------------------------------------------------------------------"}}}
