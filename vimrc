set nocompatible                  " 关闭Vi兼容模式
set langmenu=zh_CN.utf-8
set helplang=cn                   " 帮助文件为中文
set encoding=utf-8                " 设置编码为utf-8

" 颜色设置
"hi DiffAdd ctermbg=4
"hi DiffChange term=bold ctermbg=13
"hi SpellBad term=reverse ctermbg=9
"hi SpellRare term=reverse ctermbg=13
"hi Pmenu ctermbg=6
"hi PmenuSel ctermbg=5

"if has("gui_macvim")
	"set go=aAce
	"set transp=8
	"set transparency=6
	"set mouse=a
	"colorscheme desert
	"set cursorline                " 当前行高亮
"endif


set nu                            " 显示行号
set ignorecase                    " 忽略大小写 

set hlsearch                      " 高亮显示搜索结果 
set incsearch                     " 键入时同步搜索
set cindent
set smartindent
" tab处理
set textwidth=0
set sw=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent                    " 新行时自动缩进 
set backspace=indent,eol,start    " 退格键何时可以删除光标之前的字符
set expandtab
"set wildmenu
set commentstring=\ #\ %s
"set foldlevel=0
set clipboard+=unnamed
set completeopt=longest,menu
"
"" 高亮
set showcmd                       " 显示完整的命令已经完成的部分 
"set paste
set ruler                         " 显示当前光标位置 
syntax enable                     " 语法高亮 
syntax on
set background=dark
colorscheme solarized

" tagbar
nmap tl :TagbarToggle<CR>
let g:tagbar_width = 25

let mapleader=","

"自动补全
filetype plugin indent on         " 自动识别文件类型，用文件类型plugin脚本，使用缩进定义文件 
"NERD Tree
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeCaseSensitiveSort=0
let NERDTreeHighlightCursorline=1
let NERDTreeShowLineNumbers=1

nmap nt :NERDTreeToggle<cr>
nmap <F2> :NERDTreeMirror<cr>

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_auto_complete = 1
"let g:neocomplcache_disable_auto_complete = 1

" 判断文件类型
if expand("%:e") == "py"
	" 程序片断
	iab <expr> dtsss strftime("%F")
	iab <expr> foutsss expand("%")
	imap <F11> <esc>ggO# -*- coding: utf-8 -*-<cr>#--------------------------------------------------------------------------<cr># @brief      目的、作用说明<cr>#<cr># @version    0.01<cr># @author     xiao <heyun51@gmail.com> <cr>#<cr># @created    dtsss <cr># @license    Apache License V2.0<cr>#--------------------------------------------------------------------------<cr><cr># vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:<esc>kO<cr>

	nmap <F12> ggO# -*- coding: utf-8 -*-<esc>Go<esc>d0i<cr><cr># vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4<esc>

	imap <F9> <esc>$?def <cr>wywo<cr><backspace>#------------------------------------------ End def <esc>p:nohls<cr>a()<esc>2ko

	imap <F10> <esc>$?class <cr>wywo<cr><backspace>#-------------------------------------------------- End class <esc>p:nohls<cr><esc>2ko"""<cr>"""<cr>

	nmap <F5> :w<cr>:!python %

endif

imap {<cr> {}<esc>i<cr><cr><esc>ka<tab>

" 快捷键
"imap { {}<esc>i
"imap } <c-r>=ClosePair('}')<CR>
"imap ( ()<ESC>i
"imap ) <c-r>=ClosePair(')')<CR>
"imap [ []<ESC>i
"imap ] <c-r>=ClosePair(']')<CR>

"function ClosePair(char)
	"if getline('.')[col('.') - 1] == a:char
		"return "\<Right>"
	"else
		"return a:char
	"endif
"endf

au BufNewFile,BufRead */.hgrc,*/.hg/hgrc setf ini
au BufNewFile,BufRead *.tpl,*.htm,*.mako setf html
" TxtBrowser          高亮TXT文本文件
au BufRead,BufNewFile *.txt setlocal ft=txt
