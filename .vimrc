" from /usr/share/vim/vim80/defaults.vim
if v:progname =~? "evim"
  finish
endif
if exists('skip_defaults_vim')
  finish
endif
set nocompatible
set backspace=indent,eol,start
set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line
set ttimeout		" time out for key codes
set ttimeoutlen=100	" wait up to 100ms after Esc for special key
set display=truncate
set scrolloff=5
if has('reltime')
  set incsearch
endif
set nrformats-=octal
if has('win32')
  set guioptions-=t
endif
map Q gq
inoremap <C-U> <C-G>u<C-U>
if &t_Co > 2 || has("gui_running")
  syntax on
  let c_comment_strings=1
endif
if has("autocmd")
  filetype plugin indent on
  augroup vimStartup
    au!
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
  augroup END
endif " has("autocmd")
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
if has('langmap') && exists('+langremap')
  set nolangremap
endif
" end
" +-------------+
" | mysettings 	|
" +-------------+
set number
set tabstop=2
set shiftwidth=2
set smartindent

"testing
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

noremap <S-h> ^
noremap <S-l> $

inoremap { {}<LEFT>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap {{ {
inoremap ( ()<LEFT>
inoremap (( (
inoremap < <><LEFT>
inoremap << <
inoremap " ""<LEFT>
inoremap "" "
inoremap ' ''<LEFT>
inoremap '' '
