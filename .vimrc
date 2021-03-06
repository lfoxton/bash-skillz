set nocompatible                  " Must come first because it changes other options.

silent! call pathogen#runtime_append_all_bundles()

let mapleader = ","
let g:netrw_liststyle= 3
let g:netrw_list_hide= '\(^\|\s\s\)\zs\.\S\+'

syntax on

if has("gui_macvim")
  colorscheme solarized
  set background=light
  set lines=55
  set columns=120
  set guifont=Menlo_Regular:h14
  set guicursor=n:blinkon0
  if $SHELL =~ '/\(sh\|csh\|bash\|tcsh\|zsh\)$'
    let s:path = system("echo echo VIMPATH'${PATH}' | $SHELL -l")
    let $PATH = matchstr(s:path, 'VIMPATH\zs.\{-}\ze\n')
  endif
  macmenu &File.New\ Tab key=<nop>
  map <D-r> :CommandT<CR>
endif

set noautoindent
set autowriteall
set autoread

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set history=2000

set nowrap
set linebreak                     "wrap lines at convenient points

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set title
set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set noswapfile                    " Swap files are annoying"
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=/tmp//,.            " Keep swap files in one location

set statusline=%<[%n]\ %F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2                  " Show the status line all the time

set foldcolumn=2
" set foldmethod=syntax
" http://vim.wikia.com/wiki/All_folds_open_when_open_a_file
set foldlevel=20

"This changes directory but it is like autochdir
"autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /

map <Leader>n :Ve.<CR>
map <Leader>b :Ve<CR>
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>tn :tabnew <C-R>=expand("%:p:h") . "/" <CR>

cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

imap <S-Enter> <Esc>o

if has("autocmd")
  autocmd bufwritepost *vimrc source $MYVIMRC
endif

:noremap <F1> :BufExplorer<CR>
:noremap <F2> :set hlsearch! hlsearch?<CR>
:noremap <F3> :set wrap!<CR>
:noremap <F4> :ccl<CR>
:noremap <F5> ggV/^$<CR>zf<CR>:set nohlsearch<CR>
" Delete :wip => true when the cursor is on 'w'
:noremap <F6> 3h14x

map <D-j> gj
map <D-k> gk

