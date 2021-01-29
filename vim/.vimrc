"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/adam/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/adam/.vim/bundles')
  call dein#begin('/home/adam/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/home/adam/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('kien/ctrlp.vim')
	call dein#add('bling/vim-airline')
	call dein#add('airblade/vim-gitgutter')
	call dein#add('editorconfig/editorconfig-vim')
	call dein#add('easymotion/vim-easymotion')
	call dein#add('scrooloose/syntastic')
	call dein#add('def-lkb/merlin')
	call dein#add('OCamlPro/ocp-indent')
	call dein#add('jpalardy/vim-slime')	
	call dein#add('kchmck/vim-coffee-script')
	call dein#add('prettier/vim-prettier')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" My Bundles here:




set laststatus=2

set hidden

set shiftwidth=2
set tabstop=2

syntax enable
" set background=dark
" colorscheme solarized

au BufRead,BufNewFile *.ru setfiletype ruby

set relativenumber 

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

nnoremap <SPACE> <Nop>
let mapleader = "\<Space>" 
inoremap jk <esc>

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

let g:prettier#exec_cmd_path = "~/.nvm/versions/node/v8.12.0/bin/prettier"
