set nocompatible                  " 关闭Vi兼容模式
set langmenu=zh_CN.utf-8
set helplang=cn                   " 帮助文件为中文
set encoding=utf-8                " 设置编码为utf-8
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
Plugin 'Valloric/YouCompleteMe'
"Plugin 'Neocomplcache'  " 当没办法使用 YouCompleteMe 时，使用
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'TagBar'
Plugin 'txtbrowser'
Plugin 'markdown'
Plugin 'git://github.com/emmetio/emmet.git'
Plugin 'git://github.com/Lokaltog/vim-powerline.git'

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
set clipboard+=unnamed
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
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0

" vim-powerline
set laststatus=2
"set t_Co=256
let g:Powerline_symbols='unicode'
set encoding=utf8

" tagbar
nmap tl :TagbarToggle<CR>
let g:tagbar_width = 25

let mapleader=","

"NERD Tree
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeCaseSensitiveSort=1
let NERDTreeHighlightCursorline=1
let NERDTreeShowLineNumbers=1

nmap nt :NERDTreeToggle<cr>
nmap <F2> :NERDTreeMirror<cr>

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_auto_complete = 1
"let g:neocomplcache_disable_auto_complete = 1

" python 专用
function PyType()
	" 程序片断
	iab <expr> dtsss strftime("%F")
	iab <expr> foutsss expand("%")
	imap <F11> <esc>ggO# -*- coding: utf-8 -*-<cr>#--------------------------------------------------------------------------<cr># @brief      目的、作用说明<cr>#<cr># @version    0.01<cr># @author     xiao <heyun51@gmail.com> <cr>#<cr># @created    dtsss <cr># @license    Apache License V2.0<cr>#--------------------------------------------------------------------------<cr><cr># vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:<esc>kO<cr>

	nmap <F12> ggO# -*- coding: utf-8 -*-<esc>Go<esc>d0i<cr><cr># vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4<esc>

	imap <F9> <esc>$?def <cr>wywo<cr><backspace>#------------------------------------------ End def <esc>p:nohls<cr>a()<esc>2ko

	imap <F10> <esc>$?class <cr>wywo<cr><backspace>#-------------------------------------------------- End class <esc>p:nohls<cr><esc>2ko""" """<cr>

	nmap <F5> :w<cr>:!python %

endf

au FileType python call PyType()

imap {<cr> {}<esc>i<cr><cr><esc>ka<tab>

au BufNewFile,BufRead */.hgrc,*/.hg/hgrc setf ini
au BufNewFile,BufRead *.tpl,*.htm,*.mako setf html
au FileType html set shiftwidth=2 | set tabstop=2 | set softtabstop=2
" TxtBrowser          高亮TXT文本文件
au BufRead,BufNewFile *.txt setlocal ft=txt

