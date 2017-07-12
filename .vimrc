set number
set nocompatible
filetype plugin on
runtime macros/matchit.vim

if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
let s:dein_path = expand('~/.vim/dein')

if dein#load_state(s:dein_path)
	call dein#begin(expand('~/.vim/dein'))
	call dein#add('Shougo/dein.vim')
	call dein#add('Shougo/neocomplete.vim')
	call dein#add('Shougo/unite.vim')
	call dein#add('Shougo/neocomplcache')
	call dein#add('tpope/vim-surround')
	call dein#add('altercation/vim-colors-solarized')
	call dein#add('Shougo/neosnippet-snippets')
	call dein#add('Shougo/neosnippet')
	call dein#add('KazuakiM/vim-qfstatusline')
	call dein#add('KazuakiM/vim-qfstatusline')
	call dein#add('Shougo/vimproc.vim', {'build': 'make'})
	call dein#end()
endif

if dein#check_install()
  call dein#install()
endif

let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>

let g:php_baselib       = 1
let g:php_htmlInStrings = 1
let g:php_noShortTags   = 1
let g:php_sql_query     = 1

let g:sql_type_default = 'mysql'

let g:neosnippet#snippets_directory='~/.vim/dein/repos/github.com/Shougo/neosnippet-snippets/neosnippets'

autocmd BufRead *.php\|*.ctp\|*.tpl :set dictionary=~/.vim/dictionary/php.dict filetype=php
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'
