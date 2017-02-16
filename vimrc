" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim', { 'for': 'python' } " Python jedi plugin
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'SingleCompile'
Plugin 'plasticboy/vim-markdown'
Plugin 'Raimondi/delimitMate' " Closing of quotes
Plugin 'tmhedberg/SimpylFold'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" jedi和ycm自动补全冲突解决
let g:jedi#completions_enabled = 0

" NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree"


" 不使用vi的键盘模式，而用vim自己的
set nocompatible              " be iMproved, required

"在处理未保存或只读文件的时候，弹出确认
set confirm

" 侦测文件类型
filetype off                  " required

" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on

" 语法高亮
syntax on

" 显示行号
set nu

" 在状态行上显示光标所在位置的行号和列号
"set ruler

" 在搜索的时候，输入的词句逐字符高亮(类似firefox的搜索)
set incsearch

" indent guide
" let g:indent_guides_auto_colors = 1
" set ts=4 sw=4 noet

set splitbelow
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"继承前一行的缩进方式
"set autoindent

"自动缩进
"set smartindent

"tab用空格代替
set expandtab

"tab = 4 blankspace
"set tabstop=4

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

nn <silent><F2> :exec("NERDTree ".expand('%:h'))<CR>
nmap <F6> :SCCompile<cr>
nmap <F5> :SCCompileRun<cr>

autocmd VimEnter * NERDTree
wincmd w
autocmd VimEnter * wincmd w

" if has('mouse')
" 	set mouse=a
" endif
