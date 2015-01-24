A personal vimrc.

#### Install
    1. install plugin manager vundle: [https://github.com/gmarik/Vundle.vim]
    2. open vim, input` :PluginInstall`
    3. edit .vimrc and custom


#### Plugin List

    " Code Completions
    supertab
    delimitMate
    clang_complete
    ultisnips

    " Fast navigation
    vim-matchit
    vim-easymotion

    " Fast editing
    tabular
    gundo.vim
    vim-surround
    nerdcommenter

    " IDE features
    c.vim
    ag.vim
    ack.vim
    mru.vim
    ctrlp.vim
    tagbar
    bufexplorer
    vim-fugitive
    nerdtree
    syntastic
    Visual-Mark
    vim-powerline
    minibufexpl.vim
    vim-trailing-whitespace

    " Other Util
    CRefVim
    vundle
    vimproc.vim
    vimshell.vim
    unite.vim
    vimwiki
    goyo.vim
    calendar-vim
    fcitx.vim
    VimRepress
    indentLine.vim
    vim-pandoc
    vim-youdao-translater'

#### hotkey

    <F1>       关闭Location list(syntastic窗口)
    <F2>       切换到下一个高亮书签，或下一个语法错误处
    <S-F2>     切换到上一个高亮书签，或上一个语法错误处
    <c-F2>     标记高亮书签
    <F3>       打开tagbar
    <F4>       打开NERDTree
    <F5>       打开Gundo tree
    <F6>       打开quickfix
    <F7>       跳转到下一处错误
    <s-F7>     跳转到上一处错误
    <F8>       Debug
    <F9>       编译
    <S-F9>     输入运行参数
    <C-F9>     运行
    <F10>      打开博客列表
    <C-F10>    将博文保存为草稿
    <A-F10>    在本地预览博文
    <F11>      终端最大、最小化
    <S-F11>    生成cscope文件
    <C-F11>    添加cscope文件
    <F12>      打开vimshell

    gD         查询变量，只在本文件中
    gd         查询变量, 只在本函数中
    [i         查询变量的定义
    [<Tab>     跳到变量定义的地方
    mm         标记高亮书签
    ,a         启动ag进行全局查找 :Ag [options] pattern [PATH]
    ,o         打开bufexplorer
    ,u         显示最近打开的文件
    ,h         取消搜索高亮显示
    ,c         清除所有无用的空格
    ,ev        快速打开.vimrc
    ,sv        快速重载.vimrc
    <C-o>      回到上次编辑的地方
    <C-e>      停止补全并回到原来文字
    <S-k>      普通模式:man在光标下的函数

     cscope
     ----------------------------------------------------------------
    cfs:查找即查找C语言符号出现的地方
    cfg:查找函数、宏、枚举等定义的位置
    cfc:查找光标下的函数被调用的地方
    cft: 查找指定的字符串出现的地方
    cfe:egrep模式查找,相当于egrep功能
    cfn: 查找文件名,相当于lookupfile
    cfi: 查找当前文件名出现过的地方
    cfd: 查找本当前函数调用的函数

     Ultisnips
     ----------------------------------------------------------------
    <Tab>      snips模板补全
    jj         切换到补全的下一处
    kk         切换到补全的上一处
    <M-l>      打开snips模板补全列表

     minibufexpl
     ----------------------------------------------------------------
    <M-m>      切换到下一个buffer
    <M-n>      切换到上一个buffer
    <M-d>      删除当前buffer
    <M-h>      切换minibufexpl
    ,1-100     切换到第1-100个buffer

     windows
     ----------------------------------------------------------------
    <C-c>      关闭分屏窗口
    <C-w><C-o> 将当前的分屏窗口最大化
    <C-j><C-k><C-h><C-l>   在分屏窗口间浏览

     macro
     ----------------------------------------------------------------
     qa 将之后的所有键盘操作录制下来，直到再次在命令模式按下q，并存储在a中 " @a 执行刚刚记录在a里面的键盘操作
     @@ 执行上一次的macro操作

     十六进制编辑
     ----------------------------------------------------------------
    :%!xxd     把所有的行(%)用本地(!)的xxd程序打开。
    :%!xxd -r  返回正常显示
    xxd本是linux下一个显示、编辑、转换二进制的命令。

     Ctrlp
     ----------------------------------------------------------------
    <C-p>      打开Ctrlp进行查找
    <C-d>      更改匹配模式(文件|目录)
    <C-z>      标记要打开的文件
    <C-y>      建立新的文件或目录

     vim-youdao-translater
     ----------------------------------------------------------------
     在普通模式下，按 ctrl+t， 会翻译当前光标下的单词；
     在 visual 模式下选中单词，按 ctrl+t，会翻译选择的单词；
     ,yd可以在命令行输入要翻译的单词；

     Tabular
     ----------------------------------------------------------------
     ,m=   按'='来对齐排版
     ,m:   按':'来对齐排版
     其他  在n或v模式下，输入":Tabularize /," 按','来对对齐排版

     Tagbar
     ----------------------------------------------------------------
    s         可按正序和逆序排序
    <space>   在名称上按空格键可看到它的原型
    p         光标停在tagbar栏，而代码跳到目标位置
    <c-p>     跳到上一个类别
    <c-n>     跳到下一个类别
    x         在放大和还原tagbar栏间切换
    q         关闭tagbar栏

     surround插件
     ----------------------------------------------------------------
     Normal mode
     -----------
    ds  - delete a surrounding
    cs  - change a surrounding
    ys  - add a surrounding
    yS  - add a surrounding and place the surrounded text on a new line + indent it
    yss - add a surrounding to the whole line
    ySs - add a surrounding to the whole line, place it on a new line + indent it

    删除包围符号的命令是ds,后面加的字符表示要删除的符号比如：
    "Hello *world!"           ds"         Hello world!
    替换包围符号的命令是cs,命令后跟两个参数，分别是被替换的符号和需要使用的符号。比如
    "Hello *world!"           cs"'        'Hello world!'
    添加包围符号的命令是ys(ys可以记为you surround)，命令后同样跟两个参数，第一个是一个vim“动作”（motion）或者是一个文本对象。
    其中motion即vim动作，比如说w向后一个单词。文本对象简单的来说主要是来通过一些分隔符来标识一段文本，比如iw就是一个文本对象，即光标下的单词。

     Visual mode
     -----------
    s   - in visual mode, add a surrounding(key mapping error)
    S   - in visual mode, add a surrounding but place text on new line + indent it


     nerdcommenter插件
     ----------------------------------------------------------------
    ,ca   在可选的注释方式之间切换，比如C/C++的块注释/**/和行注释//
    ,cc   注释当前行
    ,c    切换注释/非注释状态
    ,cs   以”性感”的方式注释
    ,cA   在当前行尾添加注释符，并进入Insert模式
    ,cu   取消注释
    ,cl   注释当前行
    Normal模式下，几乎所有命令前面都可以指定行数
    Visual模式下执行命令，会对选中的特定区块进行注释/反注释

     EasyMotion
     ----------------------------------------------------------------
     Mapping           | Details
     ------------------|----------------------------------------------
     <Leader>f{char}   | Find {char} to the right. See |f|.
     <Leader>F{char}   | Find {char} to the left. See |F|.
     <Leader>t{char}   | Till before the {char} to the right. See |t|.
     <Leader>T{char}   | Till after the {char} to the left. See |T|.
     <Leader>w         | Beginning of word forward. See |w|.
     <Leader>W         | Beginning of WORD forward. See |W|.
     <Leader>b         | Beginning of word backward. See |b|.
     <Leader>B         | Beginning of WORD backward. See |B|.
     <Leader>e         | End of word forward. See |e|.
     <Leader>E         | End of WORD forward. See |E|.
     <Leader>ge        | End of word backward. See |ge|.
     <Leader>gE        | End of WORD backward. See |gE|.
     <Leader>j         | Line downward. See |j|.
     <Leader>k         | Line upward. See |k|.
     <Leader>n         | Jump to latest "/" or "?" forward. See |n|.
     <Leader>N         | Jump to latest "/" or "?" backward. See |N|.

     CRefVim
     ----------------------------------------------------------------
    <Leader>cr normal mode:  get help for word under cursor
                             Memory aid cr: (c)-(r)eference
    <Leader>cr visual mode:  get help for visually selected text
                             Memory aid cr: (c)-(r)eference
    <Leader>cw:              prompt for word CRefVim should search for
                             Memory aid cw: (c)-reference (w)hat
    <Leader>cc:              jump to table of contents of the C-reference manual
                               Memory aid cc: (c)-reference (c)ontents
    Note: by default <Leader> is \, e.g. press \cr to invoke C-reference

    Note: The best way to search for an operator (++, --, %, ...) is to visually
    select it and press <Leader>cr.
    To get help do :help crefvimdoc
    To show the C-reference manual do :help crefvim
