set nocompatible                  " 关闭Vi兼容模式
set langmenu=zh_CN.utf-8
set encoding=utf-8
set fileencodings=utf-8,gb18030,cp936,latin1
set helplang=cn                   " 帮助文件为中文
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" 个人的插件
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Neocomplcache'  " 当没办法使用 YouCompleteMe 时，使用
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'TagBar'
"Plugin 'markdown'
"Plugin 'git://github.com/Raimondi/delimitMate.git'

"Plugin 'git://github.com/klen/python-mode.git'
Plugin 'git://github.com/mattn/emmet-vim.git'
"Plugin 'git://github.com/Lokaltog/vim-powerline.git'
Plugin 'vim-airline/vim-airline'
"Plugin 'git://github.com/kchmck/vim-coffee-script.git'
Plugin 'git://github.com/tpope/vim-haml.git'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'groenewege/vim-less'
Plugin 'git://github.com/hail2u/vim-css3-syntax.git'
Plugin 'posva/vim-vue'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'


" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" 个人
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
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent                    " 新行时自动缩进 
set backspace=indent,eol,start    " 退格键何时可以删除光标之前的字符
set expandtab
"set wildmenu
set commentstring=\ #\ %s
"set foldlevel=0
"set clipboard+=unnamed " 直接 y 复制内容到系统剪切板
set completeopt=longest,menu
"
"" 高亮
set showcmd                       " 显示完整的命令已经完成的部分 
set cursorline                " 当前行高亮
"set paste
set ruler                         " 显示当前光标位置 
syntax enable                     " 语法高亮 
syntax on
set background=dark
colorscheme solarized

" YCM
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
"let g:ycm_seed_identifiers_with_syntax=1 " 语法关键字补全
"let g:ycm_confirm_extra_conf=0 " 关闭加载.ycm_extra_conf.py提示
"let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
"let g:ycm_complete_in_comments = 1 " 在注释输入中也能补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_semantic_triggers =  {
  "\   'c' : ['->', '.'],
  "\   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  "\             're!\[.*\]\s'],
  "\   'ocaml' : ['.', '#'],
  "\   'cpp,objcpp' : ['->', '.', '::'],
  "\   'perl' : ['->'],
  "\   'php' : ['->', '::'],
  "\   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  "\   'ruby' : ['.', '::'],
  "\   'lua' : ['.', ':'],
  "\   'erlang' : [':'],
  "\ }

" vim-powerline
set laststatus=2
"set t_Co=256
"let g:Powerline_symbols='unicode'

" tagbar
nmap tl :TagbarToggle<CR>
let g:tagbar_width=25
let g:tagbar_show_linenumbers=2 " 行号显示方式 0:不显示 1:绝对行号 2:相对行号 -1:使用全局设置
let g:tagbar_autoclose=1 " 跳转Tag后自动关闭

let mapleader=","

" Pymode
let g:pymode_folding=0   " 关闭功能：Python折叠
let g:pymode_lint_on_write=0  " 关闭功能：如果文件被修改, 保存时检查代码

"NERD Tree
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeCaseSensitiveSort=1
let NERDTreeHighlightCursorline=1
let NERDTreeShowLineNumbers=1
let NERDTreeIgnore=['\.pyc$']
let NERDTreeQuitOnOpen=1

nmap <F2> :NERDTreeMirror<cr>
nmap nt :NERDTreeToggle<cr><F2>

let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select=1
let g:neocomplcache_enable_auto_complete=1
"let g:neocomplcache_disable_auto_complete=1

" python 专用
function PyType()
	" 程序片断
	iab <expr> dtsss strftime("%F")
	iab <expr> foutsss expand("%")
	imap <F11> <esc>ggO# -*- coding: utf-8 -*-<cr>'''<cr># @brief      目的、作用说明<cr>#<cr># @version    0.01<cr># @author     xiao <heyun51@gmail.com> <cr>#<cr># @created    dtsss <cr># @license    Apache License V2.0<cr>'''<cr><cr># vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:<esc>kO<cr>

	nmap <F12> ggO# -*- coding: utf-8 -*-<esc>Go<esc>d0i<cr><cr># vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4<esc>

	imap <F9> <esc>$?def <cr>wywo<cr><backspace># ------------------------------------------ End def <esc>p:nohls<cr>a()<esc>2ko

	imap <F10> <esc>$?class <cr>wywo<cr><backspace># -------------------------------------------------- End class <esc>p:nohls<cr><esc>2ko

	nmap <F5> :PymodeLint
    nmap <F6> :PymodeLintAuto

endf

au FileType python call PyType()

imap {<cr> {}<esc>i<cr><cr><esc>ka<tab>

nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>
au BufRead,BufNewFile *.scss set filetype=scss.css
au FileType scss set iskeyword+=-

au BufNewFile,BufRead *.tpl,*.htm,*.mako,*.blade.php setf html
"au BufWinEnter *.tpl,*.htm,*.html,*.mako,*.blade.php,*.vue set shiftwidth=2 | set tabstop=2 | set softtabstop=2
"au BufWinLeave *.tpl,*.htm,*.html,*.mako,*.blade.php,*.vue set shiftwidth=4 | set tabstop=4 | set softtabstop=4

let python_highlight_all = 1
let g:vim_markdown_folding_disabled = 1

if has("gui_macvim")
    set guifont=Monaco:h13
    set transp=8
    set transparency=6
    set lines=52 columns=90
    set guioptions-=r
    set guioptions-=L
endif

if has("gui_running")
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    set guifont=Monaco:h13
    set lines=52 columns=90
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
endif
