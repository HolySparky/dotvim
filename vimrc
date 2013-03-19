" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

filetype plugin indent on

"the followings are the rc configurations that I truly understand
set nocp    "different from old vi
set ru      "rulers
set hls     "high light
syntax on   "you know if you are a programmer
set backspace=indent,eol,start      "to really backspace everything
set whichwrap=b,s,<,>,[,]           "feel free to move, even at eol
set encoding=utf-8                  "internal encoding, of course utf-8
set fileencodings=ucs-bom,utf-8,gbk,latin1  "the order when trying to decode files
set ambiwidth=double                "the width setting, otherwise would have mess when unicode
filetype plugin indent on           "auto filetype recognise

"The followings are basic word settings that I truly understand
set sw=4        "auto indentation = 4 spaces
set ts=4        "tab = 4 spaces
set et          "all Tabs turns into spaces automatically
set smarttab    "since tabs turns into spaces, smarttab allow you delete them smartly
set spell       "spelling
set lbr         "do not break the line during a long word
set keymodel=startsel,stopsel   "to use Shift+arrows
set selection=inclusive
set wildmenu    "yeah, the menu in the wild
color torte     "try different colors carefully


" The followings I have no idea about
set autowrite
set expandtab
set fileformats=unix,dos,mac
set formatoptions+=mM
set incsearch
set laststatus=2
set list
set listchars=tab:>-,trail:-
set modeline
set modelines=3
set report=0
set shiftround
set showcmd
set showmatch
set softtabstop=4
set tabstop=8


if !has('gui_running')
    set background=dark
endif

"For MacVim
if has("gui_running")
        set go=aAce              " 去掉难看的工具栏和滑动条
        set guifont=Monaco:h13   " 设置默认字体为monaco
        set showtabline=2        " 开启自带的tab栏
        set columns=140          " 设置宽
        set lines=40             " 设置长
endif

let html_no_pre=1
"let html_use_css=1


"Latex stuff
 set shellslash
 set grepprg=grep\ -nH\ $*
 set iskeyword+=:

" Run LaTeX through TexShop
function! SRJ_runLatex()
    if &ft != 'tex'
        echo "calling srj_runLatex from a non-tex file"
        return ''
    end
 
    "write the file
    :w

    let thePath = getcwd() . '/'. expand("%")
 
    let execString = 'osascript -e "tell app
\"TeXShop\"" -e "set theDoc to open ((POSIX
 file \"'.thePath.'\") as alias)" -e "tell theDoc to latexinteractive" -e "end tell"'
    exec 'silent! !'.execString
       return ''
endfunction
   no  <expr> <D-r> SRJ_runLatex()
   vn  <expr> <D-r> SRJ_runLatex()
   ino <expr> <D-r> SRJ_runLatex()
