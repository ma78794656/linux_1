"F1~F12快捷键映射"{{{
:mapclear
map <unique> <silent> <F1> :A<CR>
map <unique> <silent> <F2> :BufExplorer<CR>
map <unique> <silent> <F3> :NERDTreeToggle<CR>
map <unique> <silent> <F4> :TagbarToggle<CR>
" map <unique> <silent> <F5> :LookupFile<CR>
map <unique> <silent> <F6> :make<CR>
map <unique> <silent> <F7> :Grep<CR>
map <unique> <silent> <F8> :MarksBrowser<CR>

map <unique> <silent> <S-F7> :Rgrep<CR>
map <unique> <silent> <C-F7> :Bgrep<CR>
map <unique> <silent> <S-F8> <ESC>mmHmn:%s/\s\+$//ge<cr>'nzt'm:noh<CR>:ShowMarksClearAll<CR>  "消除每行后面的多余的空格
map <unique> <silent> <C-F8> <ESC>mmHmn:%s/<C-V><cr>//ge<cr>`nzt`m<CR>:ShowMarksClearAll<CR>  "消除文件中的^M字符
map <unique> <silent> <C-F12> :!ctags -R --c++-kinds=+p --fields=+ialS --extra=+q .<CR>


"F12: full screen(系统设置)  F11: show or hide menubar
"Toggle Menu and Toolbar
map <silent> <F11> :if &guioptions =~# 'T' <Bar>
       \set guioptions-=T <Bar>
       \set guioptions-=m <bar>
   \else <Bar>
       \set guioptions+=T <Bar>
       \set guioptions+=m <Bar>
   \endif<CR>

"nothing
"原noremap <Leader>dm mmHmn:%s/<C-V><cr>//ge<cr>`nzt`m
"mmHmn 解释 : 1.mm-->在当前行行mark m 2.H-->到该屏幕的最上面(home) 3.mn-->在最上面作标记make n
"`nzt`m 解释: 1.`n -->到标记n的位置 2.zt-->将当前行(即标记n)置顶 3.`m-->到标记m的位置
"F1~F12快捷键映射"}}}

"非F1~F12快捷键"{{{
let mapleader=","
let g:mapleader=","
nmap <leader>svi :source ~/.vimrc<CR>
nmap <leader>evi :e! ~/.vimrc<CR>
nmap <leader>tn :tabnew<CR>

"Quickfix 编译出错信息调试很有用 (若装fuf.vim, shortcut:sq )
nmap <leader>cn :cn<CR>
nmap <leader>cp :cp<CR>
nmap <leader>cw :cw 10<CR>


"单手保存
nmap <C-S> :update<CR>
imap <C-S> <ESC>:update<CR>

nmap <leader>1 :set fdm=syntax<CR>
nmap <leader>2 :set fdm=marker<CR>
nmap <leader>3 :set fdm=indent<CR>
nmap <Leader>4 :set fdm=diff<CR>

nmap <silent> <Leader>err :ErrorAtCursor<CR>

nmap <silent> <leader>bb :call SetProject('b')<CR>
nmap <silent> <leader>ee :call SetProject('e')<CR>
nmap <silent> <leader>ss :call SetProject('s')<CR>
nmap <silent> <leader>xx :call SetProject('x')<CR>
nmap <silent> <leader>uu :call SetProject('u')<CR>

"DoxygenToolkit
nmap <leader>da :DoxAuthor<CR>
nmap <leader>df :Dox<CR>
nmap <leader>db :DoxBlock<CR>

"CVS
nnoremap <silent> sj     :FufBuffer<CR>
nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> sK     :FufFileWithFullCwd<CR>
nnoremap <silent> s<C-k> :FufFile<CR>
nnoremap <silent> sl     :FufCoverageFile<CR>
nnoremap <silent> sL     :FufCoverageFileChange<CR>
nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> sD     :FufDirWithFullCwd<CR>
nnoremap <silent> s<C-d> :FufDir<CR>
nnoremap <silent> sn     :FufMruFile<CR>
nnoremap <silent> sN     :FufMruFileInCwd<CR>
nnoremap <silent> sm     :FufMruCmd<CR>
nnoremap <silent> su     :FufBookmarkFile<CR>
nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
nnoremap <silent> si     :FufBookmarkDir<CR>
nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
nnoremap <silent> st     :FufTag<CR>
nnoremap <silent> sT     :FufTag!<CR>
nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
nnoremap <silent> s,     :FufBufferTag<CR>
nnoremap <silent> s<     :FufBufferTag!<CR>
vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
nnoremap <silent> s}     :FufBufferTagWithCursorWord!<CR>
nnoremap <silent> s.     :FufBufferTagAll<CR>
nnoremap <silent> s>     :FufBufferTagAll!<CR>
vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
nnoremap <silent> sg     :FufTaggedFile<CR>
nnoremap <silent> sG     :FufTaggedFile!<CR>
nnoremap <silent> so     :FufJumpList<CR>
nnoremap <silent> sp     :FufChangeList<CR>
nnoremap <silent> sq     :FufQuickfix<CR>
nnoremap <silent> sy     :FufLine<CR>
nnoremap <silent> sh     :FufHelp<CR>
nnoremap <silent> se     :FufEditDataFile<CR>
nnoremap <silent> sr     :FufRenewCache<CR>

""SQLUtilities "冲突
""vmap <silent><leader>sf        <Plug>SQLU_Formatter<CR>
""nmap <silent><leader>scl       <Plug>SQLU_CreateColumnList<CR>
""nmap <silent><leader>scd       <Plug>SQLU_GetColumnDef<CR>
""nmap <silent><leader>scdt      <Plug>SQLU_GetColumnDataType<CR>
""nmap <silent><leader>scp       <Plug>SQLU_CreateProcedure<CR>
"
""非F1~F12快捷键"}}}
"
""自己定义的函数"{{{
"function! AddTagsDB(pro)
"    set tags =./tags
"    set tags+=/home/lidong/.vim/tag/libc.tags
"    set tags+=/home/lidong/.vim/tag/glib.tags
"    set tags+=/home/lidong/.vim/tag/cpp.tags
"    if a:pro == 'b'
"        set tags+=/home/workplace/tags/base/tags
"        set tags+=/home/workplace/tags/lastsdk/tags
"    elseif a:pro == 's'
"        set tags+=/home/workplace/tags/se/tags
"        set tags+=/home/workplace/tags/hunsdk/tags
"    elseif a:pro == 'e'
"        set tags+=/home/workplace/tags/ex/tags
"        set tags+=/home/workplace/tags/lastsdk/tags
"    else
"        return
"    endif
"endf

function! AddFilenamesDB(pro)
    if a:pro == 'x'
        let g:LookupFile_TagExpr=string('/tmp/msw/tags/xicheng/filenametags')
    elseif a:pro == 'u'
        let g:LookupFile_TagExpr=string('/tmp/msw/tags/ucenter/filenametags')
    elseif a:pro == 'e'
        let g:LookupFile_TagExpr=string('/home/workplace/tags/ex/filenametags')
    else
        return
    endif

endf

function! AddCscopeDB(pro)
    :cs kill 0
    :cs kill 1
    :cs kill 2
    " :cs kill 3
    :cs reset
    if a:pro == 'x'
        :cs add /tmp/msw/tags/xicheng/cscope.out /tmp/tags/xicheng/
        ":cs add /home/workplace/tags/base/cscope.out /home/workplace/tags/base/
        ":cs add /home/workplace/tags/lastsdk/cscope.out /home/workplace/tags/lastsdk/
        " :cs add /home/workplace/tags/middle/cscope.out /home/workplace/tags/middle/
        " :cs add /home/workplace/tags/include/cscope.out /home/workplace/tags/include/
    elseif a:pro == 'u'
        :cs add /tmp/msw/tags/ucenter/cscope.out /tmp/tags/ucenter/
        ":cs add /home/workplace/tags/se/cscope.out /home/workplace/tags/se/
        ":cs add /home/workplace/tags/hunsdk/cscope.out /home/workplace/tags/hunsdk/
        " :cs add /home/workplace/tags/middle/cscope.out /home/workplace/tags/middle/
        " :cs add /home/workplace/tags/include/cscope.out /home/workplace/tags/include/
    elseif a:pro == 'e'
        :cs add /home/workplace/tags/ex/cscope.out /home/workplace/tags/ex/
        :cs add /home/workplace/tags/lastsdk/cscope.out /home/workplace/tags/lastsdk/
        " :cs add /home/workplace/tags/middle/cscope.out /home/workplace/tags/middle/
        " :cs add /home/workplace/tags/include/cscope.out /home/workplace/tags/include/
    else
        return
    endif

endf

function! AddTreeDB(pro)
    if a:pro == 'x'
        :CCTreeLoadXRefDBFromDisk /tmp/msw/tags/xicheng/ccglue.out
    elseif a:pro == 'u'
        :CCTreeLoadXRefDBFromDisk /tmp/msw/tags/ucenter/ccglue.out
    elseif a:pro == 'e'
        :CCTreeLoadXRefDBFromDisk /home/workplace/tags/ex/ccglue.out
    else
        return
    endif

endf

function! SetProject(pro)
    "call AddTagsDB(a:pro)
    call AddFilenamesDB(a:pro)
    call AddCscopeDB(a:pro)
    call AddTreeDB(a:pro)
endf
"自己定义的函数"}}}

"简单配置"{{{
"打开语法色彩
syntax enable
"打开语法色彩

"打开关键字色
syntax on
"打开关键字色

"侦测文件类型
filetype on
"侦测文件类型

"载入文件类型插件
filetype plugin on
"载入文件类型插件

"为特定文件类型载入相关缩进文件
filetype indent on
"为特定文件类型载入相关缩进文件

"设置终端支持256颜色
set t_Co=256
"设置终端支持256颜色

"设置VIM颜色主题 你可以借助插件scrollcolor.vim和color_sample_pack.vim来选择你喜爱的主题(150多个)(请参考下面插件)
"term            黑白终端的属性
"cterm           彩色终端的属性
"ctermfg         彩色终端的前景色
"ctermbg         彩色终端的背景色
"gui             GUI 版本属性
"guifg           GUI 版本的前景色
"guibg           GUI 版本的背景色
"colorscheme elflord  "个人钟爱
" colorscheme desert
"设置VIM颜色主题 你可以借助插件scrollcolor.vim和color_sample_pack.vim来选择你喜爱的主题(150多个)(请参考下面插件)

"预览窗口,eg. ctr+w { 时的窗口大小
set previewheight=10
"预览窗口,eg. ctr+w { 时的窗口大小

"设置弹出菜单的高度
set pumheight=15
"设置弹出菜单的高度

"使用鼠标
"set mouse=a  "在vim里可以用鼠标复制粘贴, 用鼠标左键选中,中建粘贴
"使用鼠标

"使用ctrl+V ctrl+X等快捷键需要mswin插件(不推荐）
"behave mswin
"使用ctrl+V ctrl+X等快捷键需要mswin插件(不推荐）

"autocmd
if has("autocmd")
  autocmd BufEnter * :lchdir %:p:h
endif
"autocmd

"映射快捷键开始命令,缺省为'\'(已经移到上面)
"let mapleader=","
"let g:mapleader=","
"映射快捷键开始命令,缺省为'\'(已经移到上面)

"解决consle输出乱码
language messages zh_CN.utf-8
"解决consle输出乱码

"可用来改动补全时采用的方式
set wildmode=list:full
"可用来改动补全时采用的方式

"可用来取得菜单式的匹配列表 高亮首个匹配
":set wildmenu  "当set wildmode=list:full默认set wildmenu已启动, 但是set wildmode=longest:list时不启动
"可用来取得菜单式的匹配列表 高亮首个匹配

"修改一个文件后，自动进行备份，备份的文件名为原文件名加“~“后缀
"if has("vms")
"    set nobackup
"else
"    set backup  "vim main.c  多出 main.c~文件用来保存打开前的原文件, 最后可用vimdiff main.c main.c~比较
"endif
"修改一个文件后，自动进行备份，备份的文件名为原文件名加“~“后缀

"写备份但关闭vim后自动删除
set writebackup
"set nowritebackup
"写备份但关闭vim后自动删除

"vi兼容开关
set nocp      "当使用omni自动补全时,要设置
"vi兼容开关

"不使用swap文件
"set noswapfile
set swapfile
"不使用swap文件

"显示日期的缩写
iab xdate <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
"显示日期的缩写

"关闭遇到错误时的声音提示
set noerrorbells
"关闭遇到错误时的声音提示

"不要闪烁
set novisualbell
"不要闪烁

"使用空格来替换tab
"set expandtab
"set et
"使用空格来替换tab

"多标签设置
"0表示从不显示标签栏
"1表示打开文件多于一个时显示标签栏
"2表示总是显示标签栏
set showtabline=1
"多标签设置


"在vim编辑器下方显示命令
 set showcmd
 set cmdheight=1
"在vim编辑器下方显示命令

"当光标达到上端或下端时 翻滚的行数
set scrolljump =0
"当光标达到上端或下端时 翻滚的行数

"当光标达到水平极端时 移动的列数
set sidescroll =5
"当光标达到水平极端时 移动的列数

"当光标距离极端(上,下,左,右)多少时发生窗口滚动
set scrolloff =0
"当光标距离极端(上,下,左,右)多少时发生窗口滚动

"当使用vimdiff比较文件,相比较的比较文件同步滚动,但是splite分割窗口, 两个窗口也同步, 有时候挺有用的．
"set scrollbind
"set noscrollbind
"当使用vimdiff比较文件,相比较的比较文件同步滚动,但是splite分割窗口, 两个窗口也同步, 有时候挺有用的．

"将当前编辑文件的路径设置为当前路径
set autochdir
"将当前编辑文件的路径设置为当前路径

"自动读写相关
set autoread              " read open files again when changed outside Vim ( 同步 )
set autowrite             " write a modified buffer on each :next , ... ( 跳到另一个文件时,自动保存上个文件 )
set modified
"自动读写相关

"设置VIM行号
set nu
"set nonu
"设置VIM行号

"Tab 宽度
set ts=4
"Tab 宽度

"自动缩进的时候, 缩进尺寸
set sw=4
"自动缩进的时候, 缩进尺寸

"打开 VIM 的状态栏标尺
set ru
"打开 VIM 的状态栏标尺

"显示括号配对情况
set sm  "smartmatch
"显示括号配对情况

" 开启新行时使用智能自动缩进
set smartindent
" 开启新行时使用智能自动缩进

" 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set ignorecase smartcase
" 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感

" 输入搜索内容时就显示搜索结果
set incsearch
" 输入搜索内容时就显示搜索结果

" 搜索时高亮显示被找到的文本
set hlsearch
" 搜索时高亮显示被找到的文本

"打开 C/C++ 风格的自动缩进 ( =a{ , gg=G 代码美化 )
set cin
"打开 C/C++ 风格的自动缩进 ( =a{ , gg=G 代码美化 )

"use backspace delete a word.
set backspace=indent,eol,start
"indent: 如果用了:set indent,:set ai 等自动缩进,想用退格键将字段缩进的删掉,必须设置这个选项.否则不响应.
"eol:如果插入模式下在行开头,想通过退格键合并两行,需要设置eol.
"start：要想删除此次插入前的输入,需设置这个.
"use backspace delete a word.

"显示TAB健
" set list
" set listchars=tab:>-,trail:-
"显示TAB健

"允许backspace和光标键跨越行边界 ( 不习惯 )
"set whichwrap+=<,>,h,l
"允许backspace和光标键跨越行边界 ( 不习惯 )

"内容多时,换行显示
"set wrap
set nowrap
"内容多时,换行显示

"启动的时候不显示那个援助乌干达儿童的提示
set shortmess=atI
"启动的时候不显示那个援助乌干达儿童的提示

"通过使用: commands命令，告诉我们文件的哪一行被改变过 ( 不习惯 )
"set report=0
"通过使用: commands命令，告诉我们文件的哪一行被改变过 ( 不习惯 )

"在被分割的窗口间显示空白，便于阅读 (没看到效果)
"stl:\       : 当前窗口状态栏显示'空格' ('\'转义字符)
"stlnc:-     : 非当前窗口状态栏显示---
"vert:\|     : 垂直分割线为|
"fold:-      : 若设置折叠功能,折叠后显示---
set fillchars=stl:\ ,stlnc:-,vert:\|,fold:-,diff:-
"set fillchars=vert:\ ,stl:\ ,stlnc:\
"在被分割的窗口间显示空白，便于阅读 (没看到效果)

"带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#
"带有如下符号的单词不要被换行分割

" 中文帮助
set helplang=cn
" 中文帮助

" 设定doc文档目录
let helptags=$VIMFILES.'/doc'
" 设定doc文档目录

" 保留历史记录
set history=500
" 保留历史记录

" 英文单词在换行时不被截断
set linebreak
" 英文单词在换行时不被截断

" 设置每行多少个字符自动换行，加上换行符
"set textwidth=80 "有时不爽
set textwidth=0  "总不换行
" 设置每行多少个字符自动换行，加上换行符

" 光标可以定位在没有实际字符的地方
"set ve=block
" 光标可以定位在没有实际字符的地方

"显示匹配的括号([{和}])
set showmatch
"显示匹配的括号([{和}])

" 短暂跳转到匹配括号的时(0.5s)
set matchtime=5
" 短暂跳转到匹配括号的时(0.5s)

"多少个键被敲下后执行一次交换文件刷新
set updatecount=40  "设置敲入400个字符后执行
"多少个键被敲下后执行一次交换文件刷新

"交换文件刷新后的超时时间
set updatetime=50000  "50秒后刷新
":preserve "若设置的时间过长,该命令会手工的存入交换文件中.
"交换文件刷新后的超时时间

" When using make, where should it dump the file
set makeef=error.err
" When using make, where should it dump the file

"lz 如果设置本选项,执行宏,寄存器和其它不通过输入的命令时屏幕不会重画.另外,窗口标题的刷新也被推迟.要强迫刷新,使用:redraw.
"set lz "lazyredraw / 'lz'   (缺省关闭)
set redraw=1000
"lz 如果设置本选项,执行宏,寄存器和其它不通过输入的命令时屏幕不会重画.另外,窗口标题的刷新也被推迟.要强迫刷新,使用:redraw.
"简单配置"}}}

"高亮 注释代码的颜色"{{{
"hi Comment ctermfg=6
"hi cComment ctermfg=LightBlue guifg=LightBlue
"hi cCommentL ctermfg=DarkGray guifg=DarkGray
"高亮 注释代码的颜色"}}}

"高亮 menu color "{{{
"highlight Pmenu     ctermbg=LightGreen ctermfg=black guibg=Green
"highlight PmenuSel  ctermbg=Red guibg=Red
"highlight PmenuSbar ctermbg=Yellow guibg=Blue
"highlight PmenuThumb ctermbg=LightBlue guibg=Yellow
"高亮 menu color "}}}

"高亮 当前行(列)"{{{
set cursorline
set cursorcolumn
" ctermfg : red(1) yellow(2) blue green grey brown cyan magenta 数字
hi CursorLine   term=none cterm=underline      ctermbg=none    ctermfg=none "  gui=bold      guibg=NONE"
hi CursorColumn term=none cterm=bold           ctermbg=none    ctermfg=none "  gui=bold      guibg=NONE"
"高亮 当前行(列)"}}}

"高亮tab标签"{{{
"hi! TabWinNum term=bold,underline cterm=underline gui=bold,underline ctermfg=green guifg=Green ctermbg=darkgrey guibg=DarkGrey
"hi! TabWinNumSel term=bold,underline cterm=underline gui=bold,underline ctermfg=magenta ctermbg=blue guifg=Magenta guibg=#0000ff
"hi! TabPunct term=bold,underline cterm=underline gui=bold,underline ctermfg=cyan guifg=cyan ctermbg=darkgrey guibg=DarkGrey
"hi! TabPunctSel term=bold,underline cterm=underline gui=bold,underline ctermfg=magenta ctermbg=blue guifg=Magenta guibg=#0000ff
"hi! TabLineFill term=underline cterm=underline gui=underline
"hi! TabLineFillEnd term=underline cterm=underline gui=underline ctermfg=white ctermbg=black guifg=white guibg=black
"hi! TabLineSel  term=bold,reverse,underline ctermfg=white ctermbg=blue guifg=#ffff00 guibg=#0000ff gui=underline
"hi! TabModded term=underline cterm=underline ctermfg=black ctermbg=yellow gui=underline guifg=black guibg=yellow
"hi! TabExit term=underline,bold ctermfg=red guifg=#ff0000 guibg=darkgrey cterm=underline gui=underline
"hi! TabExitSel gui=underline term=underline,bold guifg=green guibg=blue cterm=underline ctermfg=green ctermbg=blue
"hi! TabSep term=reverse,standout,underline cterm=reverse,standout,underline gui=reverse,standout,underline ctermfg=black ctermbg=white
"高亮tab标签"}}}

"高亮 其他"{{{
" hi statusline cterm=bold ctermfg=LightGreen ctermbg=DarkMagenta gui=bold guifg=Green guibg=DarkMagenta
hi Folded       term=none   cterm=bold    ctermbg=none  ctermfg=none    gui=bold    guibg=NONE
hi FoldColumn   term=none   cterm=bold    ctermbg=none  ctermfg=none    gui=bold    guibg=NONE
"hi ErrorMsg cterm=bold ctermbg=DarkRed gui=bold guibg=DarkRed
"hi WarningMsg cterm=bold ctermbg=LightRed gui=bold guibg=LightRed
"高亮 其他"}}}

"设置tab标签"{{{
set tabline=%!MyTabLine()
function! MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " 选择高亮
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    " 设置标签页号 (用于鼠标点击)
    let s .= '%' . (i + 1) . 'T'
    " MyTabLabel() 提供完整路径标签 MyShortTabLabel 提供文件名标签
    let s .= ' %{MyShortTabLabel(' . (i + 1) . ')} '
  endfor
  " 最后一个标签页之后用 TabLineFill 填充并复位标签页号
  let s .= '%#TabLineFill#%T'
  " 右对齐用于关闭当前标签页的标签
  if tabpagenr('$') > 1
    let s .= '%=%#TabLine#%999Xclose'
  endif
  return s
endfunction
" 文件名标签
function! MyShortTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let label = bufname (buflist[tabpagewinnr (a:n) -1])
  let filename = fnamemodify (label, ':t')
  return filename
endfunction
"完整路径标签
function! MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  return bufname(buflist[winnr - 1])
endfunction
"设置tab标签"}}}

"Gui选项 放到.gvimrc"{{{
set mousemodel=extend
if has("gui_running")
    set guifont=Monospace\ 12  "在Linux下设置字体的命令是：
    set guicursor=a:blinkon0 "停止光标闪烁
    set guioptions=
   " set guioptions +=m   " 菜单栏
   " set guioptions +=T   " 工具栏
   "set guioptions+=b   " 底边滚动条
   " set guioptions+=l   " 左边滚动条
   "set guioptions+=L   " 垂直分隔窗口左边滚动条
   " set guioptions+=r   " 右边滚动条
   "set guioptions+=R   " 垂直分隔窗口右边滚动条
    set mousemodel=popup
    map! <S-Insert> <MiddleMouse>
    "MiddleMouse: 粘贴
    "1.间接启动全屏 还剩一个title bar
    " set lines=100       "但是lines总是30,why
    " set columns=200
    "2.设置全屏系统快捷键 F12, 真全屏 推荐
    "system settings --> Keyboard --> Shortcuts --> windows --> Toggle fullscreen mode --> F12
    "colorscheme spring
    " set nocursorline
    " set nocursorcolumn
    " hi CursorLine    gui=bold      guibg=NONE guibg=NONE
    " hi CursorColumn  gui=bold      guibg=NONE guibg=NONE
    " hi SignColumn    gui=bold      guibg=NONE guibg=NONE

    map <M-1> 1gt
    map <M-2> 2gt
    map <M-3> 3gt
    map <M-4> 4gt
    map <M-5> 5gt
    map <M-6> 6gt
    map <M-7> 7gt
    map <M-8> 8gt
    map <M-9> 9gt
    map <M-t> :tabnew<CR>
    map <M-w> :tabclose<CR>
    map! <M-1> <esc>1gt
    map! <M-2> <esc>2gt
    map! <M-3> <esc>3gt
    map! <M-4> <esc>4gt
    map! <M-5> <esc>5gt
    map! <M-6> <esc>6gt
    map! <M-7> <esc>7gt
    map! <M-8> <esc>8gt
    map! <M-9> <esc>9gt
    map! <M-t> <esc>:tabnew<CR>
    map! <M-w> <esc>:tabclose<CR>

  endif
"Gui选项 放到.gvimrc"}}}

"字符编码(多字节)"{{{
if has("multi_byte")
"    set encoding=utf-8
"    set encoding=gbk
"    set fileencodings=ucs-bom,utf-8,gb18030,gbk,gb2312,chinese,big5,latin1,cp936
endif
"字符编码(多字节)"}}}

"设置C/C++语言的具体缩进方式 eg. switch case 缩进"{{{
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
"set cino=:4g2t0(sus
"set cino=:0g0t0(sus
" :0  -- switch 语句之下的 case 语句缩进 0 个空格
" g0  -- class,struct,等权限控制语句(public,protected,private)相对class,struct等所在的块缩进 0 个空格
" t0  -- 如果函数返回值与函数名不在同一行，则返回值缩进 0 个空格
" (sus - 当一对括号跨越多行时，其后的行缩进前面 sw 指定的距离
"设置C/C++语言的具体缩进方式 eg. switch case 缩进"}}}

"search 搜索 (visual mode)"{{{
"set hls                     " hlsearch :highlight search
"set is                      " incsearch :increase search
"set ic                      " ignorecase :ignore case when searching
"set scs                     " smartcase :if has upper case, ignore 'ignorecase' option
""map <leader>h *N           " <leader>h to highlight all word the same to which under cursor (可以使用vim自带shift + *)
""
""basically you press * or # to search for the current selection !! Really useful
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"
    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")
    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    else
        execute "normal /" . l:pattern . "^M"
    endif
    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
"map <space> :nohl<CR>       " :press <space> to clear hightlight  search highlight
"search 搜索 (visual mode)"}}}

"SearchMode "{{{
" nnoremap <silent> <F8> :call <SID>SearchMode()<CR>
function! s:SearchMode()
    if !exists('s:searchmode') || s:searchmode == 0
        echo 'Search next: scroll hit to middle if not on same page'
        nnoremap <silent> n n:call <SID>MaybeMiddle()<CR>
        nnoremap <silent> N N:call <SID>MaybeMiddle()<CR>
        let s:searchmode = 1
    elseif s:searchmode == 1
        echo 'Search next: scroll hit to middle'
        nnoremap n nzz
        nnoremap N Nzz
        let s:searchmode = 2
    else
        echo 'Search next: normal'
        nunmap n
        nunmap N
        let s:searchmode = 0
    endif
endfunction
" If cursor is in first or last line of window, scroll to middle line.
function! s:MaybeMiddle()
      if winline() == 1 || winline() == winheight(0)
          normal! zz
      endif
endfunction
"SearchMode "}}}

"设置状态栏,可以显示当前文件, 字符编码, 时间等"{{{
"显示状态栏
set ruler
set laststatus=2
"如果装了超炫的powerline插件,可以屏蔽掉
"显示状态栏,
"function! CurDir()
"    let curdir = substitute(getcwd(), $HOME, "~", "g")
"    return curdir
"endfunction
"function! CurTime()
"    let curtime = strftime("%m-%d %H:%M:%S")
"    return curtime
"endfunction
"if has('statusline')
"    set statusline =
"    set statusline+=%<%F\                    " Filename 如果路径名很长会自动缩短
"    set statusline+=%w%h%m%r                 " Options
"    set statusline+=\ [%{&ff}/%Y]            " filetype
"   "set statusline+=\ [%{getcwd()}]          " current dir
"    set statusline+=\ [A=\%03.3b/H=\%02.2B]  " ASCII / Hexadecimal value of char
"    set statusline+=%=%-8.(%l,%c%V%)\ %p%%   " Right aligned file nav info
"endif
if has("gui_running")
    set noruler
    set laststatus=2
endif
"状态行显示内容
" %f 只显示名字不显示路径
" %F 当前文件名
" %m 当前文件修改状态
" %r 当前文件是否只读
" %Y 当前文件类型
" %{&fileformat} 当前文件编码
" %b 当前光标处字符的 ASCII 码值
" %B 当前光标处字符的十六进制值
" %l 当前光标行号
" %c 当前光标列号
" %V 当前光标虚拟列号 (根据字符所占字节数计算)
" %p 当前行占总行数的百分比
" %% 百分号
" %L 当前文件总行数
"设置状态栏,可以显示当前文件, 字符编码, 时间等"}}}

"设置标题栏,可以显示文件名等"{{{
"if has('title') && (has('gui_running') || &title)
"    set titlestring=
"    set titlestring+=%f\                "文件名
"    set titlestring+=%h%m%r%w           "标记符
"    set titlestring+=\ -\ %{v:progname} "程序名
"endif
"设置标题栏,可以显示文件名等"}}}

"vim折叠功能"{{{
"折叠方式,可用选项 ‘foldmethod’ 来设定折叠方式：set fdm=***
"有 6 种方法来选定折叠：
"manual           手工定义折叠
"indent           更多的缩进表示更高级别的折叠
"expr             用表达式来定义折叠
"syntax           用语法高亮来定义折叠
"diff             对没有更改的文本进行折叠
"marker           对文中的标志折叠
"常用的折叠快捷键
"zf  创建折叠 (marker 有效)
"zo  打开折叠
"zO  对所在范围内所有嵌套的折叠点展开
"zc  关闭当前折叠
"zC  对所在范围内所有嵌套的折叠点进行折叠
"[z  到当前打开的折叠的开始处。
"]z  到当前打开的折叠的末尾处。
"zM  关闭所有折叠 (我喜欢)
"zr  打开所有折叠
"zR  循环地打开所有折叠 (我喜欢)
"zE  删除所有折叠
"zd  删除当前折叠
"zD  循环删除 (Delete) 光标下的折叠，即嵌套删除折叠
"za  若当前打开则关闭，若当前关闭则打开  ( 这个就足够了)
"zA  循环地打开/关闭当前折叠
"zj  到下一折叠的开始处 ( 我喜欢 )
"zk  到上一折叠的末尾   ( 我喜欢 )
"set foldmethod=indent
"set foldmarker={,}
"set foldmethod=marker
"要想在{  } 代码块中折叠，按空格键
"syntax 与 c.vim 中的 \cc 注释功能冲突
"set foldmethod=syntax
"set foldmethod=marker
"set foldenable              " 开始折叠
"set foldcolumn=0            " 设置折叠区域的宽度
"set foldlevel=0             " 设置折叠层数为
"set foldopen=all
"set foldclose=all           " 设置为自动关闭折叠
"使"用空格打开或关闭折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zC' : 'zO')<CR>
"vim折叠功能"}}}

"文件比较"{{{
    ":vertical diffsplit FILE_RIGHT   "与已打开的文件进行比较
    "设置不同之处显示上下三行
    set diffopt=context:3
    "命令模式（ESC键进入）：
    "[c  跳转到下一个差异点
    "]c  跳到上一个差异点
    "dp  左边文件差异复制到右边文件(直接在键盘上行按下dp)
    "do  右边文件差异复制到左边文件(直接在键盘上行按下do)
    "zo  隐藏相同行
    "zc  展开向同行
    "u 撤销
    "Ctrl+w  文件切换
    "
    ":qa! 退出不保存
    ":wa  保存
    ":wqa 保存退出
    ":diffupdate 重新比较
"文件比较"}}}

"单词列表匹配"{{{
"ctrl+x ctrl+k
"apt-get install wordlist
set dictionary=~/.vim/dict/wordlist.txt
" set cpt=.,b,t,k
set cpt=.,b,t
" set cpt=.
"    .	scan the current buffer ('wrapscan' is ignored)
"    w	scan buffers from other windows
"    b	scan other loaded buffers that are in the buffer list
"    u	scan the unloaded buffers that are in the buffer list
"    U	scan the buffers that are not in the buffer list
"    k	scan the files given with the 'dictionary' option
"    kspell  use the currently active spell checking |spell|
"    k{dict}	scan the file {dict}.  Several "k" flags can be given,
"       patterns are valid too.  For example: >
"           :set cpt=k/usr/dict/*,k~/spanish
"    s	scan the files given with the 'thesaurus' option
"    s{tsr}	scan the file {tsr}.  Several "s" flags can be given, patterns
"       are valid too.
"    i	scan current and included files
"    d	scan current and included files for defined name or macro
"       |i_CTRL-X_CTRL-D|
"    ]	tag completion
"    t	same as "]"
"单词列表匹配"}}}

"打开文件后自动回到上一次最后编辑的地方"{{{
au BufReadPost *
 \ if line("'\"") > 1 && line("'\"") <= line("$") |
 \ exe "normal! g'\"" |
 \ endif
"打开文件后自动回到上一次最后编辑的地方"}}}

"completeopt 弹出菜单 输入字母实现即时的过滤和匹配 ( 参考 neocomplcache  )"{{{
""关掉智能补全时的预览窗口 (Scratch)
"" menu     使用弹出菜单来显示可能的补全
"" longest  只插入匹配的最长公共文本
""set completeopt=menuone,menu,longest,preview
"filetype plugin indent on
"set ofu=syntaxcomplete#Complete
" set completeopt=menu,longest
set completeopt=menu
"completeopt 弹出菜单 输入字母实现即时的过滤和匹配 ( 参考 neocomplcache  )"}}}

"括号智能匹配"{{{
" :inoremap ( ()<ESC>i
:inoremap ) <C-R>=CloseBracket()<CR>
function! CloseBracket()
    if getline('.')[col('.')-1] == ')'
        return "\<Right>"
    else
        return ')'
    endif
endf
""括号智能匹配"}}}

"过长的行显示不全"{{{
set display=lastline
"过长的行显示不全"}}}

"----------------------
"利用 插件 丰富 功能
"----------------------

"FuzzyFinder fuf.vim模糊查找"{{{
" 1.FuzzyFinder 下载:http://www.vim.org/scripts/script.php?script_id=1984
" 2.vim-l9.vim 下载: http://www.vim.org/scripts/script.php?script_id=3252  "FuzzyFinder依赖该插件
" 3.模式
"     1 |:FufBuffer|       - Buffer mode (|fuf-buffer-mode|)
"     2 |:FufFile|         - File mode (|fuf-file-mode|)
"     3 |:FufCoverageFile| - Coverage-File mode (|fuf-coveragefile-mode|)
"     4 |:FufDir|          - Directory mode (|fuf-dir-mode|)
"     5 |:FufMruFile|      - MRU-File mode (|fuf-mrufile-mode|)
"     6 |:FufMrucmd-mode|)
"     7 |:FufBookmarkFile| - Bookmark-File mode (|fuf-bookmarkfile-mode|)
"     8 |:FufBookmarkDir|  - Bookmark-Dir mode (|fuf-bookmarkdir-mode|)
"     9 |:FufTag|          - Tag mode (|fuf-tag-mode|)
"    10 |:FufBufferTag|    - Buffer-Tag mode (|fuf-buffertag-mode|)
"    11 |:FufTaggedFile|   - Tagged-File mode (|fuf-taggedfile-mode|)
"    12 |:FufJumpList|     - Jump-List mode (|fuf-jumplist-mode|)
"    13 |:FufChangeList|   - Change-List mode (|fuf-changelist-mode|)
"    14 |:FufQuickfix|     - Quickfix mode (|fuf-quickfix-mode|)
"    15 |:FufLine|         - Line mode (|fuf-line-mode|)
"    16 |:FufHelp|         - Help mode (|fuf-help-mode|)
" 4.介绍
"   <c-n> :向下选择匹配      <c-p> :向上选择匹配
"   <c-j> :水平分割选中项    <c-k> :垂直分割选中项    <cr> :直接跳到选中项
"   <c-t> :切换到下一个模式  <c-y> :切换到上一个模式
"   <c-]> :delete select item
"   <c-\><c-\> :fuzzy matching 和 partial matching匹配模式切换 ( 模糊查找 与 部分查找 : 前者输入关键字错误时也可显示, 后者输入的部分关键字一定正确 )
" let g:fuf_previewHeight = 1     "预览高度
" let g:fuf_enumeratingLimit = 20 "符合条件的最多显示20个
let g:fuf_modesDisable = [] "打开查找最近文件模式
" let g:fuf_mrufile_maxItem = 10
" let g:fuf_mrucmd_maxItem = 100
"FuzzyFinder fuf.vim模糊查找"}}}

"lookupfile插件默认会使用ctags产生的tag来查找，效率很低,使用下面脚本生成filenametags"{{{
"当使用了acp.vim ( autocomplpop.vim)时, 该插件好像有点问题. 不过还是可以使用
"echo "!_TAG_FILE_SORTED	2	/2=foldcase/"; find . -not -iregex '.*\.\(jar\|gif\|jpg\|class\|exe\|dll\|pdd\|sw[op]\|xls\|doc\|pdf\|zip\|tar\|ico\|ear\|war\|dat\).*' -type f -printf "%f\t%p\t1\n" |  sort -f > ./filenametags
let g:LookupFile_MinPatLength = 2               "最少输入3个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
let g:LookupFile_SortMethod = ""                "关闭对搜索结果的字母排序
let g:LookupFile_UpdateTime = 200
let g:LookupFile_AlwaysAcceptFirst = 1
let g:LookupFile_DefaultCmd = ':LUTags'
" Don't display binary files
let g:LookupFile_FileFilter = '\.class$\|\.o$\|\.obj$\|\.exe$\|\.jar$\|\.zip$\|\.war$\|\.ear$\|\.bak$\|\tag$'
let g:LookupFile_TagExpr=string('/home/workplace/tags/base/filenametags')
"映射LookupFile为,lk
"nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,ll
"nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,lw
"nmap <silent> <leader>lw :LUWalk<cr>
" lookup file with ignore case
function! LookupFile_IgnoreCaseFunc(pattern)
    let _tags = &tags
    try
        let &tags = eval(g:LookupFile_TagExpr)
        let newpattern = '\c' . a:pattern
        let tags = taglist(newpattern)
    catch
        echohl ErrorMsg | echo "Exception: " . v:exception | echohl NONE
        return ""
    finally
        let &tags = _tags
    endtry

    " Show the matches for what is typed so far.
    let files = map(tags, 'v:val["filename"]')
    return files
endfunction
let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc'
"lookupfile插件默认会使用ctags产生的tag来查找，效率很低,使用下面脚本生成filenametags"}}}

"neocomplcache.vba 插件替代autocomplpop(acp.vim) omnicppcomplete.vim , 在使用acp.vim,OmniCppComplete.vim 你就被out."{{{
"-----------------------------------------------------------------
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 0
let g:neocomplcache_enable_camel_case_completion = 0
let g:neocomplcache_enable_underbar_completion = 0
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_enable_caching_message = 0
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" let g:neocomplcache_force_overwrite_completefunc=1 "如果你同时安装了lookupfile或者其他需要改变completefunc的插件时, 这个千万不要设置,否则他们就没有作用啦!
" 使用lookupfile时不提示错误要修改autoload/neocomplcache.vim :line:690 添加
"  if &l:completefunc == 'lookupfile#Complete' 
"      return 
"  endif  
"  "Warning
"neocomplcache.vba 插件替代autocomplpop(acp.vim) omnicppcomplete.vim , 在使用acp.vim,OmniCppComplete.vim 你就被out."}}}

"omnicppcomplete : c/c++ omni-completion with ctags database"{{{
"set nocp "要关闭兼容 (上面已处理)
let OmniCpp_NamespaceSearch =1
let OmniCpp_GlobalScopeSearch =1
let OmniCpp_ShowAccess =1
let OmniCpp_MayCompleteDot =1
let OmniCpp_MayCompleteArrow =1
let OmniCpp_MayCompleteScope =1
let OmniCpp_DefaultNamespaces =["std", "_GLIBCXX_STD"]
"omnicppcomplete : c/c++ omni-completion with ctags database"}}}

"教你高效地浏览源码 -- 插件: TagList"{{{
set tags  =./tags
set tags +=/home/lidong/.vim/tag/libc.tags
set tags +=/home/lidong/.vim/tag/cpp.tags 
set tags +=/home/lidong/.vim/tag/libc.tags
"在taglist窗口中，可以使用下面的快捷键：
"<CR>      跳到光标下tag所定义的位置，用鼠标双击此tag功能也一样
"o         在一个新打开的窗口中显示光标下tag
"<Space>   显示光标下tag的原型定义
"u         更新taglist窗口中的tag
"s         更改排序方式，在按名字排序和按出现顺序排序间切换
"x         taglist窗口放大和缩小，方便查看较长的tag
"+         打开一个折叠，同zo
"-         将tag折叠起来，同zc
"*         打开所有的折叠，同zR
"=         将所有tag折叠起来，同zM
"[[        跳到前一个文件
"]]        跳到后一个文件
"q         关闭taglist窗口
"<F1>      显示帮助
"使用 :Tlist
":help taglist.txt  ( ~/.vim/doc/taglist.txt )
"
"快捷键
"map <F4> :TlistToggle<CR>
"快捷键
"
"设定Linux系统中ctags程序的位置
"let Tlist_Ctags_Cmd = '/usr/bin/ctags'  "好像使用apt-get install安装的默认路径

"http://ctags.sourceforge.net/
"http://dfrank.ru/uploaded_files/ctags/ctags-5.8.1.tar.gz  "该版本加了补丁,若装了indexer.tar.gz推荐使用
" let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'  "好像使用./configure && make && make install安装的默认路径
"设定Linux系统中ctags程序的位置
"
"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Show_One_File=1
"不同时显示多个文件的tag，只显示当前文件的
"
"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow=1
"如果taglist窗口是最后一个窗口，则退出vim
"
"在右侧窗口中显示taglist窗口
" let Tlist_Use_Right_Window = 1
"在右侧窗口中显示taglist窗口
"
"在左侧窗口中显示taglist窗口
let Tlist_Use_Left_Window = 1
"在左右侧窗口中显示taglist窗口
"
"设置打开时自动调到对应tag上
let Tlist_GainFocus_On_ToggleOpen = 1
"设置打开时自动调到对应tag上
"
"选中tag后关闭List
" let Tlist_Close_On_Select = 1
"选中tag后关闭List
"
" 缺省情况下，在双击一个tag时，才会跳到该tag定义的位置
" let Tlist_Use_SingleClick= 1
" 缺省情况下，在双击一个tag时，才会跳到该tag定义的位置
"
"Taglist窗口宽度
let Tlist_WinWidth = 25
"Taglist窗口宽度
"
"在启动VIM后，自动打开taglist窗口
"let Tlist_Auto_Open=1
"在启动VIM后，自动打开taglist窗口
"
"taglist始终解析文件中的tag，不管taglist窗口有没有打开
"let Tlist_Process_File_Always=1
"taglist始终解析文件中的tag，不管taglist窗口有没有打开
"
"set 1 同时显示多个文件中的tag时，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来
let Tlist_File_Fold_Auto_Close=1
"set 1 同时显示多个文件中的tag时，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来
"教你高效地浏览源码 -- 插件: TagList"}}}

"利用cvim.zip插件实现,下载后解压到~/.vim中"{{{
"下载地址: http://www.vim.org/scripts/script.php?script_id=213
"let g:C_MapLeader  = ','   "默认的是'\'
"Ctrl+j 的使用:eg. 当你使用\if添加一个函数时,会多出一些类似<+xxx+>的东西(需要重新填写), ctrl+j可以帮你忙,试一下很强.
"1.添加文件头注释（自动完成）
"2.添加c函数（标准模式执行\if, 再输入函数名）
"3.添加main函数（标准模式执行\im）
"4.添加函数注释 （标准模式执行\cfu）
"5.添加注释框架 （标准模式执行\cfr）
"6.添加头文件 （标准模式执行\p<包含头文件 或 \p"包含头文件）
"7.添加宏定义 （标准模式执行\pd)
"8.添加代码片段
"（标准模式执行\nr,需在~/.vim/c-support/codesnippets/中加入存放代码的文件)
"      -- Help ---------------------------------------------------------------
"
"      \hm       show manual for word under the cursor (n,i)
"      \hp       show plugin help                      (n,i)
"利用cvim.zip插件实现,下载后解压到~/.vim中"}}}

"推荐使用 code_complete.vim"{{{
    let g:completekey = "<s-tab>"
"推荐使用 code_complete.vim"}}}

"pathogen脚本运行环境,更新插件相当方便"{{{
"默认在bundle中
call pathogen#infect()
"pathogen脚本运行环境,更新插件相当方便"}}}
 
"googletranslate.vim"{{{
"http://code.google.com/p/jiazhoulvke/downloads/detail?name=googletranslate.vim
"使用: <leader>c2e  <leader>e2c
"googletranslate.vim"}}}

"tagbar 样式比taglist好看"{{{
let g:tagbar_autofocus = 1
let g:tagbar_width = 25
let g:tagbar_autoshowtag = 1
let g:tagbar_autoclose = 0
let g:tagbar_left = 0
"tagbar 样式比taglist好看"}}}

"NERD_commenter.vim : 1218    "可以使用cvim.zip, 但是这个觉到习惯一些"{{{
let NERDSpaceDelims=3       " 让注释符与语句之间留3个空格
let NERDCompactSexyComs=1   " 多行注释时样子更好看
let NERD_c_alt_style=1
"Default mapping:
"[count],cc   " 以行为单位进行注释.
" ,c<space>     " comment , <--> , uncomment.   ( 常用 )
" ,cm           " 一段为单位进行注释. ( 常用 )
" ,cs           " 简洁美观式注释.  ( 常用 , 可以嵌套注释,用,cu取消注释 )
" ,cy           " Same as ,cc except that the commented line(s) are yanked first.
" ,c$           " 注释当前光标到行末的内容.
" ,cA           " 在行末进行手动输入注释内容.
" ,ca           " 切换注释方式(/**/ <--> //).   ( 常用 )
" ,cl           " Same cc, 左对齐.
" ,cb           " Same cc, 两端对其.
" ,cu           " Uncomments the selected line(s).  ( 常用 )
"NERD_commenter.vim : 1218    "可以使用cvim.zip, 但是这个觉到习惯一些"}}}

"单独切换打开NERD_tree (  )"{{{
"-----------------------------------------------------------------
" plugin - NERD_tree.vim 以树状方式浏览系统中的文件和目录
" :ERDtree 打开NERD_tree         :NERDtreeClose    关闭NERD_tree
" o 打开关闭文件或者目录         t 在标签页中打开
" T 在后台标签页中打开           ! 执行此文件
" p 到上层目录                   P 到根目录
" K 到第一个节点                 J 到最后一个节点
" u 打开上层目录                 m 显示文件系统菜单（添加、删除、移动操作）
" r 递归刷新当前目录             R 递归刷新当前根目录
"-----------------------------------------------------------------
"loaded_nerd_tree            不使用NerdTree脚本
"NERDChristmasTree           让Tree把自己给装饰得多姿多彩漂亮点
"NERDTreeAutoCenter          控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
"NERDTreeAutoCenterThreshold 与NERDTreeAutoCenter配合使用
"NERDTreeCaseSensitiveSort   排序时是否大小写敏感
"NERDTreeChDirMode           确定是否改变Vim的CWD
"NERDTreeHighlightCursorline 是否高亮显示光标所在行
"NERDTreeHijackNetrw         是否使用:edit命令时打开第二NerdTree
"NERDTreeIgnore              默认的“无视”文件
"NERDTreeBookmarksFile       指定书签文件
"NERDTreeMouseMode           指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）
"NERDTreeQuitOnOpen          打开文件后是否关闭NerdTree窗口
"NERDTreeShowBookmarks       是否默认显示书签列表
"NERDTreeShowFiles           是否默认显示文件
"NERDTreeShowHidden          是否默认显示隐藏文件
"NERDTreeShowLineNumbers     是否默认显示行号
"NERDTreeSortOrder           排序规则
"NERDTreeStatusline          窗口状态栏
"NERDTreeWinPos              窗口位置（'left' or 'right'）
"NERDTreeWinSize             窗口宽
let NERDTreeAutoCenter=1
let NERDTreeHijackNetrw=0                            "使用:edit命令时只打开一个NerdTree
let NERDChristmasTree=1                              "让Tree把自己给装饰得多姿多彩漂亮点
let NERDTreeAutoCenter=1                             "控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
let NERDTreeHighlightCursorline=1                    "是否高亮显示光标所在行
let NERDTreeBookmarksFile='/home/lidong/.NERDTreeBookmark.txt'   "指定书签文件
let NERDTreeMouseMode=1                              "指定鼠标模式
let NERDTreeShowBookmarks=1                          "默认显示书签列表
let NERDTreeShowFiles=1                              "默认显示文件
let NERDTreeShowHidden=0                             "默认not显示隐藏文件
let NERDTreeShowLineNumbers=1                        "默认显示行号
let NERDTreeWinPos='left'                            "窗口位置left
let NERDTreeWinSize=40                               "窗口宽
let NERDTreeStatusline=1
" files to ignore "
let NERDTreeIgnore = ['.*\.o$']
let NERDTreeIgnore += ['.*\.bak$']
let NERDTreeIgnore += ['.*\.out$']
let NERDTreeIgnore += ['.*\.so$', '.*\.a$', '.*\.dll$']
" audio/video "
let NERDTreeIgnore += ['.*\.ogv$', '.*\.ogg$', '.*\.mp3$', '.*\.avi$']
let NERDTreeIgnore += ['.*\.mp4$', '.*\.wmv$', '.*\.wma$', '.*\.mp([eE])?g$']
" pics "
let NERDTreeIgnore += ['.*\.[pP][nN][gG]$', '.*\.[jJ][pP][gG]$', '.*\.[gG][iI][fF]$']
" tarballs "
let NERDTreeIgnore += ['.*\.bz2$', '.*\.gz$', '.*\.tar$', '.*\.zip$', '.*\.tgz$', '.*\.rar$']
" packages "
let NERDTreeIgnore += ['.*\.deb$', '.*\.ipk$', '.*\.rpm$', '.*\.tbz$']" flash "
let NERDTreeIgnore += ['.*\.[sS][wW][fF]$']
" libtool archives and objs "
let NERDTreeIgnore += ['.*\.lo', '.*\.la']
" java's binary files "
let NERDTreeIgnore += ['.*\.class']
" tags "
let NERDTreeIgnore += ['tags']
" nnoremap <silent> <leader>f :NERDTreeToggle<CR>
" o.......打开所选文件或目录    ( 常用 )
" enter..............相当于o
" go......类似o, 但光标仍然停留在NERD_tree  ( 常用 )
" t.......在新标签中打开所选文件
" T.......类似t, 但光标仍然停留在NERD_tree
" i.......在一个水平分割窗口中打开文件
" gi......类似i, 但光标仍然停留在NERD_tree
" s.......在一个垂直分割窗口中打开文件.......................|NERDTree-s|
" gs......类似s, 但光标仍然停留在NERD_tree
" O.......递归打开所选目录
" 鼠标双击.......相当于o, 没错支持鼠标的~!
"单独切换打开NERD_tree (  )"}}}

"errormarker.vim"{{{
":nmap <silent> <unique> <Leader>cc :ErrorAtCursor<CR>
" hi ErrorMsg cterm=bold ctermbg=DarkRed gui=bold guibg=DarkRed
" hi WarningMsg cterm=bold ctermbg=LightRed gui=bold guibg=LightRed
let errormarker_errortext = "Er"
let errormarker_warningtext = "Wa"
let errormarker_warningtypes = "wW"
let errormarker_errorgroup = "ErrorMsg"
let errormarker_warninggroup = "Todo"
let &errorformat="%f:%l:%c: %t%*[^:]:%m," . &errorformat

"f:file l:line c:column t:warningtypes m:message
let errormarker_erroricon = "/usr/share/icons/gnome/16x16/status/dialog-error.png"   "gvim
let errormarker_warningicon = "/usr/share/icons/gnome/16x16/status/dialog-warning.png" "gvim
"errormarker.vim"}}}

"F7 Grep.vim 查找字符插件"{{{
" 将光标位置放到所要搜索的字符串上, 按F7, 默认搜索所有(*)类型文件
"fgrep :  将正则表达式的符号当作字符搜索 eg. $ [a|b]
" nnoremap <silent> <F7> :Grep<CR>
let Grep_Default_Options = '-i -a'
let Grep_Skip_Dirs = '.svn .bak tag'
let Grep_Skip_Files = '*.bak *~ *.obj *.o *.bin'
" 直接放到plugin中.
"F7 Grep.vim 查找字符插件"}}}

"当查看源码是使用 -- 插件 : Cscope_map.vim"{{{
"是否使用 quickfix 窗口来显示 cscope 结果
set cscopequickfix=s-,c-,d-,i-,t-,e-
"echo "export CSCOPE_DB=/home/tags/cscope.out" >> ~/.bashrc
"------- 下面是对cscope_map.vim文件的部分翻译
""0 或 s  查找本 C 符号(可以跳过注释)
""1 或 g  查找本定义
""2 或 d  查找本函数调用的函数 --可以到函数的定义处
""3 或 c  查找调用本函数的函数 --该函数被谁调用
""4 或 t  查找本字符串
""6 或 e  查找本 egrep 模式
""7 或 f  查找本文件
""8 或 i  查找包含本文件的文件
""ctrl + o 可以返回
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

""window split horizontally
nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>
"
""window split vertically
nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
"
""使用方法
""生成一个 cscope 的数据库
""1.cd /usr/src/linux/
""2.cscope -Rbq
""cs add /usr/src/linux/cscope.out /usr/src/linux/
""reset : 重新初始化所有连接. 用法  : cs reset
""
""1.下載cscope包 http://cscope.sourceforge.net/
""2.安裝cscope A../configure B.make C.make install
""3.修改set csprg 位置 ：/usr/local/bin/cscope
""4.F3
""5.测试（1）cscope find g 函数名 （2） cscope find c 函数名
""6. :cw 显示多个结果
""
""下面是shell脚本，放到源码目录下运行
""#!/bin/sh
""find . -name "*.h" -o -name "*.c" -o -name "*.cc" > cscope.files
""cscope -bkq -i cscope.files
""ctags -R
""上面是shell脚本，放到源码目录下运行
""
""下面是对cscope -Rbkq 的解释
""-R: 在生成索引文件时，搜索子目录树中的代码
""-b: 只生成索引文件，不进入cscope的界面
""-k: 在生成索引文件时，不搜索/usr/include目录
""-q: 生成cscope.in.out和cscope.po.out文件，加快cscope的索引速度
""下面是对cscope -Rbkq 的解释
""
""-------------当前使用 快键----------
""noremap <F3> :!./vitags.sh<CR>:cs reset<CR>
""noremap <F3> :! cscope -Rbq<CR>:cs reset<CR>
""
""cscope和ctags的兼容问题
"if has("cscope")
"	" set csprg=/usr/bin/cscope
"	set cscopetag   "具有Ctags快捷键功能eg. ctrl+] , ctrl + t
"    set csto=1      "先使用ctags再使用cscope
"    set nocscopeverbose  "不显示信息
"    set notimeout
"    if filereadable($DEFAULT_CSCOPE)
"        cs add $DEFAULT_CSCOPE
"    endif
"    if filereadable($MID_CSCOPE)
"        cs add $MID_CSCOPE
"    endif
"    if filereadable($SDK_CSCOPE)
"        cs add $SDK_CSCOPE
"    endif
"endif
""cscope和ctags的兼容问题
":help if_cscop.txt
":cs show
"当查看源码是使用 -- 插件 : Cscope_map.vim"}}}

"CCtree.Vim  C Call-Tree Explorer 源码浏览工具 关系树 (赞)"{{{
"1. 除了cscope ctags 程序的安装,还需安装强力胶 ccglue(ctags-cscope glue): http://sourceforge.net/projects/ccglue/files/src/
"    (1) ./configure  &&  make  && make install  (或直接下载ccglue放到/bin中
"    (2) $ccglue -S cscope.out -o cctree.out  或 $ccglue -S cscope1.out cscope2.out -o cctree.out
"    (3) :CCTreeLoadXRefDBFromDisk cctree.out
"2. 映射快捷键(上面F1) 其中$CCTREE_DB是环境变量,写在~/.bashrc中
"   map <F1> :CCTreeLoadXRefDBFromDisk $CCTREE_DB<CR>
"    eg.
"        export CSCOPE_DB=/home/tags/cscope.out
"        export CCTREE_DB=/home/tags/cctree.out
"        export MYTAGS_DB=/home/tags/tags

"   "注: 如果没有装ccglue ( 麻烦且快捷键不好设置,都用完了 )
"        (1) map <leader>xxx :CCTreeLoadDB $CSCOPE_DB<CR>              "这样加载有点慢, cscope.out cctree.out存放的格式不同
"        (2) map <leader>xxx :CCTreeAppendDB $CSCOPE_DB2<CR>           "追加另一个库
"        (3) map <leader>xxx :CCTreSaveXRefDB $CSCOPE_DB<CR>           "格式转化xref格式
"        (4) map <leader>xxx :CCTreeLoadXRefDB $CSCOPE_DB<CR>          "加载xref格式的库 (或者如下)
"            map <leader>xxx :CCTreeLoadXRefDBFromDisk $CSCOPE_DB<CR>  "加载xref格式的库
"        (5) map <leader>xxx :CCTreeUnLoadDB                           "卸载所有的数据库
"3. 设置
let g:CCTreeDisplayMode = 1      " 当设置为垂直显示时, 模式为3最合适. (1-minimum width, 2-little space, 3-witde)
" let g:CCTreeWindowVertical = 0   " 水平分割,垂直显示
let g:CCTreeWindowVertical = 1
let g:CCTreeWindowMinWidth = 25  " 最小窗口
"let g:CCTreeUseUTF8Symbols = 1   " 为了在终端模式下显示符号
"g:CCTreeKeyToggleWindow = '<C-\>w'  "打开关闭窗口
" let g:CCTreeHilightCallTree = 0  " 去掉高亮, 太耀眼.
"默认设置:
"            g:CCTreeKeyTraceForwardTree = '<C-\>>' "该函数调用其他函数
"            g:CCTreeKeyTraceReverseTree = '<C-\><' "该函数被谁调用
"            g:CCTreeKeyHilightTree = '<C-l>'        " Static highlighting
"            g:CCTreeKeySaveWindow = '<C-\>y'
"            g:CCTreeKeyToggleWindow = '<C-\>w'
"            g:CCTreeKeyCompressTree = 'zs'     " Compress call-tree
"            g:CCTreeKeyDepthPlus = '<C-\>='
"            g:CCTreeKeyDepthMinus = '<C-\>-'
"CCtree.Vim  C Call-Tree Explorer 源码浏览工具 关系树 (赞)"}}}

"SuperTab "{{{
"let g:SuperTabRetainCompletionType=2
""要和neocomplcache的补全设置一致
"let g:SuperTabDefaultCompletionType="<C-X><C-U>"
"SuperTab "}}}

"ShowMarks高亮功能显示出标记的位置( 先使用vim提供的sign功能进行标记位置 )"{{{
" ================= (第一个) http://www.vim.org/scripts/script.php?script_id=152  对vim7.x是有一小点问题的. =============
let showmarks_enable = 1   "使能showmarks插件
"Show which marks:全部的大写标记和小写 ( 推荐只使用小写, 大写可能有bug )
let showmarks_include = "abcefghijklmnopqrstuvwxyzABCEFGHIJKLMNOPQRSTUVWXYZ"    "我把D去掉了,因为DoxygenToolkit.vim中修改了点东西
" Ignore help, quickfix, non-modifiable buffers:对文件类型为help, quickfix, 和不可修改的缓冲区，不显示标记的位置
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 0
" hi ShowMarksHLl ctermbg=Black   ctermfg=Blue gui=none  guibg=Black
" hi ShowMarksHLu ctermbg=Black  ctermfg=Red   gui=none  guibg=Black
"ShowMarks插件中已经定义了一些快捷键：
",mt   - 打开/关闭ShowMarks插件 ( 常用 )
",mo   - 强制打开ShowMarks插件
",mh   - 清除当前行的标记    ( 常用 )
",ma   - 清除当前缓冲区中所有的标记 ( 常用 )
",mm   - 在当前行打一个标记，使用下一个可用的标记名  ( 常用 )
"ShowMarks高亮功能显示出标记的位置( 先使用vim提供的sign功能进行标记位置 )"}}}

"showbrower.vim 显示标记"{{{
"map <silent><F2> :MarksBrowser<CR>   "映射快捷键
"let marksCloseWhenSelected = 0   "当打开一个标记时不关闭标记浏览窗口
"showbrower.vim 显示标记"}}}

"mark.vim 当你在文件中想多个不同的关键词,且用不同的颜色显示, 那么该插件可你帮助你"{{{
"下载地址: http://www.vim.org/scripts/script.php?script_id=1238
"1. map keys 触发键 默认是'\', 可以设置为',' let g:mapleader=",". 本vimrc已设置为','
"warn:本人修改了mark.vim使用'['作为触发
"2. [m : "高亮"显示光标下的单词或取消当前光标下的单词高亮显示
"3. [r : 手工输入需要高亮显示的单词
"4. [n : 当光标下有"高亮"显示的单词时,则取消. 如光标下没有"高亮"的单词时,则取消所有"高亮"的单词.
"5. [*  : 下一个与光标下颜色相同的高亮单词.
"6. [#  : 上一个与光标下颜色相同的高亮单词.
"7. [/ : 下一个高亮单词(不一定是相同颜色).
"8. [? : 上一个高亮单词(不一定是相同颜色).
"9. 重新定义需要高亮单词的颜色:
"hi MarkWord1  ctermbg=Yellow   ctermfg=White  guibg=#FFDB72    guifg=Black
"hi MarkWord2  ctermbg=Red      ctermfg=White  guibg=#FF7272    guifg=Black
"hi MarkWord3  ctermbg=Blue     ctermfg=White  guibg=#9999FF    guifg=Black
"hi MarkWord4  ctermbg=Cyan     ctermfg=White  guibg=#8CCBEA    guifg=Black
"hi MarkWord5  ctermbg=Brown    ctermfg=White  guibg=#FF7272    guifg=Black
"hi MarkWord6  ctermbg=Magenta  ctermfg=White  guibg=#FFB3FF    guifg=Black
"hi MarkWord7  ctermbg=Green    ctermfg=White  guibg=#A4E57E    guifg=Black
"mark.vim 当你在文件中想多个不同的关键词,且用不同的颜色显示, 那么该插件可你帮助你"}}}

"a.vim实现源文件与头文件切换"{{{
let alternateSearchPath = 'sfr:.,sfr:./include,sfr:../include,sfr:../inc'  "设置include(.h)文件存在何处.
let alternateNoDefaultAlternate = 1  "当没有找到相应的.h文件时,不自动创建
":A 切换当前文件的头文件,在当前窗口打开(或者反过来)  "先打开.h .c 文件存于buff中
":AS 功能同:A,但是切换到水平分割窗口的打开
":AV 功能同:A,但是切换到竖直分割的窗口打开
":AT 功能同:A,但是切换到标签页打开
"a.vim实现源文件与头文件切换"}}}

"align.vim 各种对齐快捷键 (有几个挺有用)"{{{
" 注\是自己设置的leader,默认是'\',本.vimrc设置为','
" \a,   ---- 声明多个变量在同一行中时,可用它转换多行分别声明.
" \abox ---- 选中一个模块,执行它后,该模块会被注释掉且注释的样式是box.
" \adec ---- 声明多个变量后(不同行不同类型且赋初值),以'='号对齐左右值.
" \adef ---- define '=' align
" \t=   ---- 变量连等赋值时以'='号对齐
"align.vim 各种对齐快捷键 (有几个挺有用)"}}}

""PowerLine.vim 状态栏更绚丽"{{{
""修改插件使得能够显示文件路径,修改~/.vim/autoload/PowerLine/Segments.vim:(line:9)Pl#Segment#Create('filename', '%F') (%t -- > %F)
"" let g:Powerline_symbols = 'unicode'
"let g:Powerline_symbols = 'fancy'
"" let g:Powerline_colorscheme = 'skwp'
"let g:Powerline_stl_path_style = 'short'
"let g:Powerline_cache_file = '/home/lidong/.Powerline.cache'
" call Pl#Theme#InsertSegment('currenttag', 'after', 'fileinfo') "默认已添加
"配合powerline.vim时时在状态栏中显示函数名
"function! GetProtoLine()
"  let ret       = ""
"  let line_save = line(".")
"  let col_save  = col(".")
"  let top       = line_save - winline() + 1
"  let so_save = &so
"  let &so = 0
"  let istypedef = 0
"  " find closing brace
"  let closing_lnum = search('^}','cW')
"  if closing_lnum > 0
"    if getline(line(".")) =~ '\w\s*;\s*$'
"      let istypedef = 1
"      let closingline = getline(".")
"    endif
"    " go to the opening brace
"    normal! %
"    " if the start position is between the two braces
"    if line(".") <= line_save
"      if istypedef
"        let ret = matchstr(closingline, '\w\+\s*;')
"      else
"        " find a line contains function name
"        let lnum = search('^\w','bcnW')
"        if lnum > 0
"          let ret = getline(lnum)
"        endif
"      endif
"    endif
"  endif
"  " restore position and screen line
"  exe "normal! " . top . "Gz\<CR>"
"  call cursor(line_save, col_save)
"  let &so = so_save
"  return ret
"endfunction
"
"function! WhatFunction()
"  if &ft != "c" && &ft != "cpp"
"    return ""
"  endif
"  let proto = GetProtoLine()
"  if proto == ""
"    return "?"
"  endif
"  if stridx(proto, '(') > 0
"    let ret = matchstr(proto, '\w\+(\@=')
"  elseif proto =~# '\<struct\>'
"    let ret = matchstr(proto, 'struct\s\+\w\+')
"  elseif proto =~# '\<class\>'
"    let ret = matchstr(proto, 'class\s\+\w\+')
"  else
"    let ret = strpart(proto, 0, 15) . "..."
"  endif
"  return ret
"endfunction
" set titlestring=Function:%{WhatFunction()}
" "因为其他插件配合PowerLine总有问题，所以需要自己实现
" 修改~/.vim/autoload/Powerline/Segments.vim, 将上面的的函数写到Segments.vim,并在最后添加:
"     \ Pl#Segment#Create('currenttag'        , '%{WhatFunction()}', Pl#Segment#Modes('!N')),
" 同时有时需要修改.vimrc:  call Pl#Theme#InsertSegment('currenttag', 'after', 'fileinfo') "default主题默认已添加,所以不需要
" 或者写到function.vim更好
"配合powerline.vim时时在状态栏中显示函数名
"PowerLine.vim 状态栏更绚丽"}}}

"vcscommand 各种版本控制 svn cvs git hg"{{{
"modify vcsccommand.vim line[415] replace line[416] for resovling mapping conflict with c.vim
"415:	"let lhs = VCSCommandGetOption('VCSCommandMapPrefix', '<Leader>c') . a:shortcut
"416:    let lhs = VCSCommandGetOption('VCSCommandMapPrefix', ']c') . a:shortcut
"noremap <Leader>ca    :VCSAdd<CR>
"noremap <Leader>cn    :VCSAnnotate<CR>
"noremap <Leader>cN    :VCSAnnotate!<CR>
"noremap <Leader>cc    :VCSCommit<CR>
"noremap <Leader>cD    :VCSDelete<CR>
"noremap <Leader>cd    :VCSDiff<CR>
"noremap <Leader>cg    :VCSGotoOriginal<CR>
"noremap <Leader>cG    :VCSGotoOriginal!<CR>
"noremap <Leader>ci    :VCSInfo<CR>
"noremap <Leader>cl    :VCSLog<CR>
"noremap <Leader>cL    :VCSLock<CR>
"noremap <Leader>cr    :VCSReview<CR>         ---------------> Good
"noremap <Leader>cs    :VCSStatus<CR>
"noremap <Leader>cu    :VCSUpdate<CR>
"noremap <Leader>cU    :VCSUnlock<CR>
"noremap <Leader>cv    :VCSVimDiff<CR>        ---------------> Good
let VCSCommandEnableBufferSetup=0            "slow if set 1
"vcscommand 各种版本控制 svn cvs git hg"}}}

"vim 自带Marks的使用, 如果不习惯可以使用插件ShowMarks(下面有介绍), 使能showmarks_enable = 1"{{{
"这个功能是VIM自带的功能, 习惯就好, 一切从简．可以查看帮助文档, 下面是简单介绍.
"(1) 设置标记 --> norm模式下, m + [a-z]. ( m - mark, [a-z] 也可以是[A-Z], 推荐只使用小写字母. )
"(2) 删除标记 --> 多种方法如下:
"       1. 删除标记所在的行．
" 　    2. 在其他行作相同的标记(eg. ma ).
"       3. 命令模式下   :delmarks a  ( 简写 :delm a )
"       4. 命令模式下   :delmarks! ( 删除所有小写字母标记 )
"       5. 删除多个标记 :delmarks abcd (a,b,c,d都被删除, 也可以 :delmarks a-d)
"(3) 使用标记 -->
"       1. 定位到标记位置(以a为例) -->  `a or 'a  ( 区别在于 `a到目标行的最左端,'a到目标行的第一个非空字符之前)
"       2. 对当前行到标记位置的操作-->  d`a , y`a , c`a 分别表示对该区域的删除, 复制, 更改
"       3. 显示设置的标记信息      -->  :marks (显示所有) :marks a (只显示a标记的信息)
"(4) 有用特殊标记(系统设置好的)
"       1. '' 或者 `` 从当前行跳回到最近一次跳到改行的位置去.
"       2. `. 从当前行跳回到最后一次修改的行的位置去.
"vim 自带Marks的使用, 如果不习惯可以使用插件ShowMarks(下面有介绍), 使能showmarks_enable = 1"}}}

"Doxyge nToolkit.vim 代码说明文档自动生成"{{{
"    " (1) :DoxLic        生成license  (不常使用)
"    " (2) :DoxAuthor     生成文件描述 (C程序等常使用,@file有用)
"    " (3) :Dox           生成函数注释 (很有用)
"     map <leader>da :DoxAuthor<CR>
"     map <leader>df :Dox<CR>
"     map <leader>db :DoxBlock<CR>
"
"    "注: 如果你同时安装了showmark.vim, 可能会给你带来不好的感觉, 因为DoxygenToolkit.vim中用了mark d, 解决方法:
"    " (方法1) 设置showmark插件
"    "       let showmarks_include = "abcefghijklmnopqrstuvwxyzABCEFGHIJKLMNOPQRSTUVWXYZ"  "将小d去掉, 左侧不会显示d了.
"    " (方法2)
"    "        1. 可以先修改DoxygenToolkit.vim, 将所有使用到的标记d替换成D
"    "        :%s/mark\ d/mark\ D/g
"    "        :%s/normal\ `d/normal\ `D/g
"    "        2. 设置showmark插件
          " let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCEFGHIJKLMNOPQRSTUVWXYZ"    "将D去掉
"
"    " 对class struct enum union等结构类的成员变量的注释为 /**< 解释变量 */
"    "           @class      文档化一个C++类
"    "           @struct     文档化一个 C 结构
"    "           @union      文档化一个联合
"    "           @enum       文档化一个枚举
"    "           @fn         文档化一个函数
"    "           @var        文档化一个变量，类型转换，枚举值其中之一
"    "           @def        文档化一个#define
"    "           @typedef    文档化一个类型转换
"    "
"    " Shell 命令
"    " (x) doxygen        生成文档(这个命令需要安装 apt-get install doxgen )
"    "     (1) doxygen -g   "默认生成doxygen的配置文件Doxyfile, 你也可以指定 doxygen -g myfile
"    "     (2) 编辑生成的配置文件 (配置文件采用 <TAGNAME> = <VALUE> 这样的结构)
"    "          * OUTPUT_DIRECTORY :  为生成的文档指定存放位置
"    "          * INPUT            :  指定源文件目录位置, 如有多个以空格分开
"    "          * FILE_PATTERNS    :  指定源文件扩展名 (eg .c,.cc,.cpp,.h )
"    "          * RECURSIVE        :  源代码层次结构嵌套设置, ( yes or no )
"    "          * EXTRACT_ALL      :  函数没有注释文档也要提取信息(即yes)
"    "          * EXTRACT_PRIVATE  :  设置为yes才会将私有信息提取
"    "          * EXTRACT_STATIC   :  设置为yes才会提取静态成员
"    "          * 其他需要自己看
"    "     (3) doxygen Doxyfile "运行
"    " Shell 命令
"
"    let g:DoxygenToolkit_blockHeader            =   "===  FUNCTION  ======================================================================"
"    let g:DoxygenToolkit_authorName             =   "Michael"
"    let g:DoxygenToolkit_versionString          =   "1.0"
    let g:DoxygenToolkit_briefTag_structName    =   "yes"
    let g:DoxygenToolkit_briefTag_enumName      =   "yes"
    let g:DoxygenToolkit_briefTag_funcName      =   "yes"
    let g:DoxygenToolkit_paramTag_post          =   " <+Ctrl_j+>" "如果装了cvim.zip(最新版) ctrl+j 可以跳到下一个要输入的<+xxx+>地方
    let g:doxygen_enhanced_color                =    1
"    let g:DoxygenToolkit_blockFooter            =   "====================================================================================="
"
"    "let g:DoxygenToolkit_blockHeader        =   "--------------------------------------------------------------------------"
"    "let g:DoxygenToolkit_authorName         =   "Michael"
"    "let g:DoxygenToolkit_authorTag          =   "@Author "
"    "let g:DoxygenToolkit_dateTag            =   "@Date "
"    "let g:DoxygenToolkit_versionTag         =   "@Version "
"    "let g:DoxygenToolkit_fileTag            =   "@File "
"    "let g:DoxygenToolkit_briefTag_pre       =   "@Description "
"    "let g:DoxygenToolkit_paramTag_pre       =   "@Param "
"    "let g:DoxygenToolkit_paramTag_post      =   ":"
"    "let g:DoxygenToolkit_returnTag          =   "@Return "
"    "let g:DoxygenToolkit_throwTag_pre       =   "@Exception "
"    "let g:DoxygenToolkit_briefTag_funcName  =   "yes"
"    "let g:doxygen_enhanced_color            =   1
"    "let g:DoxygenToolkit_blockFooter        =   "--------------------------------------------------------------------------"
"DoxygenToolkit.vim 代码说明文档自动生成"}}}

"选择自己喜爱主题颜色150多种scrollcolor.vim 和 color_sample_pack.vim"{{{
"1. 下载scrollcolor http://www.vim.org/scripts/script.php?script_id=1488
"2. 下载color sample pack http://www.vim.org/scripts/script.php?script_id=625
"3. 该网页是上面插件的主题样式参考图片 http://www.vi-improved.org/color_sampler_pack/
"4. 将插件放到正确的位置后打开一个文件命令模式:COLORSCROLL 上下键选择喜爱的主题
"选择自己喜爱主题颜色150多种scrollcolor.vim 和 color_sample_pack.vim
"}}}

"conqueTerm VIM中启动终端"{{{
"" let g:ConqueTerm_Syntax = 'vim'
let g:ConqueTerm_FastMode = 1
" let g:ConqueTerm_Color = 0
"" let g:ConqueTerm_PromptRegex = '^\w\+@[0-9A-Za-z_.-]\+:[0-9A-Za-z_./\~,:-]\+\$'
"let g:ConqueTerm_StartMessages = 1
"" let g:ConqueTerm_ToggleKey = '<F8>'
"let g:ConqueTerm_TERM = 'vt100'
"conqueTerm VIM中启动终端"}}}

"==================================以下是个人喜爱使用的vim(or 插件)其他强大功能,尚未完成===========================
""{{{
"vim master
"
"Verdancy --- New Commer
    "       f --- find; practic : (before)"aabbbccdd" --> ex: dfc -->  (after)"cdd"
    "寄存器
        "q[a-z] --- 记录命令, 已q结束, @[a-z]引用 --- 很强大,需要习惯使用
        "[a-z]p --- 可以将寄存器[a-z]中的命令以文本的方式输出,并进行修改
        "[a-z]y$  --- 将寄存器修改后的内容存回到对应寄存器
    "寄存器
"Verdancy --- New Commer
"
"Visual 选中模式
    "    shift + v : 配合jk,上下键,整行选择
    "    ctrl + v  : 配合hjkl,上下左右键,灵活选择区域
    "    o   : 在选中的区域中对角线移动
    "    O   : 在选中的区域中行左右移动
    "    gv  : 重新选中原来的选中的区域
    "    :   : 在选中区域后,shift+:到命令模式, : eg. '<,'>s/pattern/newstring/g -- 在选中的区域中查找patte && replace
    "    ctrl + v 选中一列后, 按I插入字符,Esc退出  : 每一行都添加这个字符,很好的一个注释方法
"Visual 选中模式
"
"Command Mode
    " :g/pattern/d  --- delete line contained of string "pattern"
"Command Mode
"
"窗口
    "ctrl + 0 : 恢复窗口大小
    "ctrl + = : 窗口等大
    "ctrl + w + _ :  窗口最大化
    "nctrl + w + _ : 改变窗口的大小
    "ctrl + w + ctrl + c : 关闭窗口
    "ctrl + w + ctrl + ] : 以函数所在文件分割窗口
    "ctrl + w + shift + [hjkl] : 窗口位置放置
    "
    "shift + z + z : close vim edit. You need set auto write.
    "
    "vim t1.c t2.c t3.c -o2 : open thress files using two windows. if -o(no number), using three windows here.
"窗口
"
"杂项
    "!!date  --- 插入日期
    "read !date -R  --- 插入日期 ( -R 显示日期的格式而已 man date )
    "
    "ctr + w ctrl + c  --- 关闭当前窗口
    "
    "%s/\s\+$// --- 删除多余的空格
    "
    "ctrl + K  --- 插入特殊字符 ♡
    "digraph --- 显示特殊字符,字符组合
    "
    "set ic  --- 忽略大小写
    "
    ". --- 重复前次操作
    "
    "ctrl + a  --- repeat record.
    "
    "ctrl + r  --- 反撤消, 当u撤消后,又想恢复,可以使用
    "
    "daw && caw && cis  --- delete a word && change a word && 修改一个句子
    "
    "cc && dd  --- change one line reserving indent  && delete one line
    "
    "CTRL+U  ----  CTRL+D   ---> half page move
    "CTRL+E  ----  CTRL+Y   ---> one line move
    "CTRL+F  ----  CTRL+B   ---> one page move
    "
    "CTRL + O  --- 返回刚才位置,每按一次都会退回到之前的位置
    "CTRL + I  --- 与CTRL+O相反,每按一次退回来
    "
    "[i  --- (将光标移到变量上)显示第一个局部变量定义处
    "[I  --- (将光标移到变量上)显示所有该变量的定义处
    "''  --- 回到刚才停留处
    "
    "/\<patter\>  ---- 精确查找
"杂项
"vim master
"
"Shell
    "巧妙去除Linux下代码行中的^M符号和windows下代码编辑引起的警告错
    ":%s /^M//g ，其中^M的写法是按住ctrl不放，再按v，然后按M，再放ctrl
    "    #wash_error.sh
    "    #!/bin/sh
    "    ls *.h *.c | awk '{print $1}' > dealfile
    "    cat dealfile | while read file
    "    do
    "    echo " " >> $file
    "    done
    "    #dos2unix *.c *.h
    "巧妙去除Linux下代码行中的^M符号和windows下代码编辑引起的警告错
"Shell
"
"==================================以上是个人喜爱使用的vim(or 插件)其他强大功能,尚未完成===========================

"Doxygen 例子
    "/**
    " * @file t.c
    " * @brief Test for test
    " * @author Michael
    " * @version 1.0
    " * @date 2011-04-10
    " */
    "
    "/**
    " * @struct STU_INFO
    " * @brief  This is a struct about student's infomation.
    " */
    "struct STU_INFO
    "{
    "    unsigned int stu_no;                        /**< stu_no : ID of the Student */
    "    unsigned int stu_age;                       /**< stu_age : Age of the Student */
    "    char stu_name[100];                         /**< stu_name: Name of the Student */
    "    unsigned short int stu_level;               /**< stu_level: level of the Student */
    "    struct STU_INFO *next;                      /**< next : Pointer to next Student */
    "};
    "
    "/**
    " * @enum STU_LEVEL
    " * @brief This is a enum about student's level.
    " */
    "enum STU_LEVEL
    "{
    "    NUMBER_ONE,                                 /**< student's level : 1 or A */
    "    NUMBER_TWO,                                 /**< student's level : 2 or B */
    "    NUMBER_THREE,                               /**< student's level : 3 or C */
    "    NUMBER_FOUR                                 /**< student's level : 4 or D */
    "};
    "
    "/**
    " * @brief This is a function about getting the student's infomation by id.
    " *  - student who get A can own:
    " *      -# A intellectual computer.
    " *      -# A kiss of Michael.
    " *  - student who get B can own:
    " *      -# A intellectual phone.
    " *      -# A kiss of Jone.
    " *
    " * @param id a unsigned integer param.
    " * @param stu a pointer that return the student info.
    " *
    " * @return student's level
    " */
    "int get_student_info( unsigned int id, struct STU_INFO *stu )
    "{
    "    return level.
    "}
"Doxygen 例子

"个人工程shell
    "1. 创建cscope库 cs.sh
    "    #!/bin/sh
    "    #rm -f cscope.* tags
    "    find /root/Trunk/EC2108_C27/  /root/Trunk/Hippo/ -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > cscope.files
    "    cscope -bkq -i cscope.files
    "    ccglue -S cscope.out -o cctree.out
    "
    "2. 创建文件查找库 filename.sh
    "    echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > filenametags
    "    find /root/Trunk/EC2108_C27 -not -regex '.*\.\(png\|gif\|db\|bak\|swp\|doc\|html\|htm\|jsp\|js\)' ! -path "*svn*" -type f -printf "%f\t%p\t1\n" | sort -f >> filenametags
    "    find /root/Trunk/Hippo/ -not -regex '.*\.\(png\|gif\|db\|bak\|swp\|doc\|html\|htm\|jsp\|js\)' ! -path "*svn*" -type f -printf "%f\t%p\t1\n" | sort -f >> filenametags
    "
    "3. 创建tags库 tags.sh
    "    ctags -R --c++-kinds=+p --fields=+ialS --extra=+q  /root/Trunk/EC2108_C27 /root/Trunk/Hippo/
    "
    "4. 设置环境变量(写到~/.bashrc)
    "        export CSCOPE_DB=/home/tags/cscope.out
    "        export CCTREE_DB=/home/tags/cctree.out
    "        export MYTAGS_DB=/home/tags/tags
"个人工程shell
"alias vim='vim --servername $USER'"}}}
"
"ubuntu cmd shortcut"{{{
"ctrl + w : delete front word
"alt + d  : delete behind word
"ctrl + a : move head
"ctrl + e : move tail
"alt + f  : move a word to right
"alt + b  : move a word to left
"ctrl + u : delete front any word
"ctrl + k : delete behind any word
"ubuntu cmd shortcut"}}}
"
"delete the last char per line :%s/.$//
"O'' "delete the blank line : :g/^$/d
"
colorscheme molokai
"set fileencodings=ucs-bom,utf-8,gb18030,gbk,gb2312,chinese,big5,latin1,cp936
set encoding=utf-8
set termencoding=utf-8
"set encoding=gbk
"set termencoding=gbk
