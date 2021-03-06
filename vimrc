"pathogen plugin: a plugin to rule them all
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
"execute pathogen#infect()


"the followings are the rc configurations that I truly understand
set nocp    "different from old vi
set ru      "rulers
set hls     "high light
set t_Co=256
colorscheme ir_black
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



"For MacVim
if has("gui_running")
        set go=aAce              " 去掉难看的工具栏和滑动条
        set guifont=Monaco:h13   " 设置默认字体为monaco
        set showtabline=2        " 开启自带的tab栏
        set columns=140          " 设置宽
        set lines=40             " 设置长
endif

