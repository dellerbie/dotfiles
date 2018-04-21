" Pathogen: gruvbox, vim-colors-solarized, matchit, vim-go
" vim-surround, ctrlp.vim, vim-javascript
execute pathogen#infect()

" Enable the matchit plugin
runtime macros/matchit.vim
set nocompatible
filetype plugin on
set encoding=utf-8
syntax enable
colorscheme gruvbox
set background=dark
" Store swap files in .vim/tmp
set directory^=$HOME/.vim/tmp//

set number

let mapleader=" "

" JSX syntax highlighting for .js files
let g:jsx_ext_required = 0

" Ruby syntax checker
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Always display the status line
set laststatus=2

" Spacing
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start

" Display extra whitespace
set list
set listchars=""
set listchars=tab:\ \
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher if executable('ag') " Use Ag over Grep
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

map <Leader>s :grep 

" Mappings
nmap 0 ^
nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>
nmap <leader>es :sp <C-R>=expand('%:h').'/'<cr>
nmap <leader>ev :vsp <C-R>=expand('%:h').'/'<cr>
nmap <leader>ns :nohlsearch<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>vr :sp $MYVIMRC<cr>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Switch between the last two files
nnoremap <leader><leader> <c-^>
