set nocompatible
set history=128
set ruler
set bs=2
set hlsearch
set incsearch
set ls=2
set wildmenu
set fo=cqrtn
set showcmd
filetype plugin indent on
set pastetoggle=<F10>
syntax on

set ts=2
set sw=2
set et
set smartindent

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t/
colorscheme desert

"au BufNewFile,BufRead *.[hc]pp set syntax=cpp11

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:syntastic_mode_map = { 'passive_filetypes': ['cpp', 'ruby'] }
let g:syntastic_html_tidy_ignore_errors=[ "proprietary attribute \"ng-", "proprietary attribute \"ui-", " not recognized", "discarding unexpected", "unescaped & which should be written as" ]

map <ESC>[H <Home>
map <ESC>[F <End>

if &diff
  colorscheme evening
else
  set autochdir
endif

"execute pathogen#infect()
filetype plugin indent on
