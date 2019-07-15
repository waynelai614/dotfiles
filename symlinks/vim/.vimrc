set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/Align'
Plugin 'mattn/emmet-vim'
" Plugin 'vim-scripts/jslint.vim'
" Plugin 'cakebaker/scss-syntax.vim'
Plugin 'nginx.vim'
" Plugin 'tir_black'
" Plugin 'othree/html5.vim'
" Plugin 'AutoComplPop'
" for vim-autocomplpop
Plugin 'L9'
Plugin 'othree/vim-autocomplpop'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'MarcWeber/vim-addon-local-vimrc'
Plugin 'tomtom/tlib_vim'


Plugin 'nono/vim-handlebars'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sleuth'
Plugin 'kchmck/vim-coffee-script'
" Plugin 'othree/vim-coffee-script'
" Plugin 'othree/coffee-check.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'yonaichin/ctrlp.vim'
Plugin 'terryma/vim-expand-region'
Plugin 't9md/vim-smalls'
Plugin 'EasyMotion'
" Plugin 'mtscout6/vim-cjsx'
Plugin 'junegunn/vim-easy-align'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'dyng/ctrlsf.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'othree/csscomplete.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'wincent/ferret'
Plugin 'othree/yajs.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'ap/vim-css-color'
Plugin 'mhartington/oceanic-next'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype on
filetype plugin on

"set t_Co=256
set bs=2
set cindent
set history=50
set modeline
set modelines=2
set nowrap
set number
"set runtimepath=~/.vim,$VIMRUNTIME
set title
set wildmenu

" Highlight search keywords.
set hlsearch
set incsearch

" Replace tab with 4 spaces.
set expandtab
set shiftwidth=2
set softtabstop=2

" Auto-complete using Ctrl+K.
" set dictionary-=~/.vim/funclist.txt
" set complete-=k complete+=k

" Syntax highlight.
syntax on
hi Comment term=standout cterm=bold ctermfg=0
highlight Search term=reverse ctermbg=3 ctermfg=0
highlight Normal ctermbg=black ctermfg=white
highlight Folded ctermbg=black ctermfg=darkcyan
hi Cursor ctermbg=Gray ctermfg=Blue
highlight clear SpellBad
highlight SpellBad term=underline cterm=underline ctermfg=red

" Set status line.
set ls=2
set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
highlight StatusLine term=bold,reverse cterm=bold,reverse

" Set cursor line.
set cursorline
set cursorcolumn
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
hi CursorColumn cterm=NONE ctermbg=darkred ctermbg=darkgray guibg=darkcyan
" match OverLength /\%81v.\+/

" Always use utf-8 encoding.
set fileencoding=utf-8
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
"set encoding=utf-8
set tenc=utf-8

" Set tab settings.
highlight TabLine ctermbg=blue
highlight TabLineFill ctermbg=green
highlight TabLineSel ctermbg=red


"" keypad
"" http://vim.wikia.com/wiki/PuTTY_numeric_keypad_mappings
imap <Esc>Oq 1
imap <Esc>Or 2
imap <Esc>Os 3
imap <Esc>Ot 4
imap <Esc>Ou 5
imap <Esc>Ov 6
imap <Esc>Ow 7
imap <Esc>Ox 8
imap <Esc>Oy 9
imap <Esc>Op 0
imap <Esc>On .
imap <Esc>OQ /
imap <Esc>OR *
imap <Esc>Ol +
imap <Esc>OS -

" Set F1-F12 shortcut keys.
" NERDTree
nnoremap <silent> <C-n> :NERDTreeMirrorToggle<CR>
let NERDTreeShowBookmarks  = 0
let g:nerdtree_tabs_focus_on_files = 1

let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
" let g:airline_theme='luna'
" let g:AirlineTheme='wombat'

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusli

" Activate scss.vim
au BufRead,BufNewFile *.scss set filetype=scss
" Removing tailing spaces.
au! BufWrite * mark ' | silent! %s/\s\+$// | norm ''
" Replace tab to spaces.
au BufWrite * :retab
" Set auto commands.
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal g'\"" |
\ endif
" Make vim setting works immediately.
autocmd! BufWritePost .vimrc source %
" Output CSS files once *.scss saves.
" autocmd BufWritePost *.scss !compass_lite <afile> <afile>:r.css

" Create a template file.
" autocmd BufNewFile *.html so ~/.vim/html.txt
" autocmd BufNewFile *.html exe "1," . 10 . "g/name=\"created\" content=\".*\"/s//name=\"created\" content=\"" .strftime("%Y-%m-%d"). "\""
" autocmd Bufwritepre,filewritepre *.c execute "normal ma"
" autocmd BufWritePre,FileWritePre *.html exe "1," . 10 . "g/name=\"modified\" content=\".*\"/s//name=\"modified\" content=\"" .strftime("%c"). "\""
" autocmd bufwritepost,filewritepost *.c execute "normal `a"

" Special File Types
au BufRead,BufNewFile *.less set ft=less
au BufRead,BufNewFile *.tpl set ft=html
au BufRead,BufNewFile *.xsl set ft=html
au BufRead,BufNewFile *.json set syntax=json
au BufRead,BufNewFile *.hbs set syntax=handlebars
au BufRead,BufNewFile *.n3  set ft=n3
au BufRead,BufNewFile /usr/local/etc/nginx/* set ft=nginx
au BufRead,BufNewFile /etc/nginx/* set ft=nginx
au BufNewFile,BufRead *.gradle setf groovy
" au BufRead,BufNewFile *.coffee set ft=coffee



" tab to indent
nmap <tab> V>
vmap <tab> >gv
nmap <s-tab> V<
vmap <s-tab> <gv

set autochdir
"auto mkdir -p when write to file
" ref: http://stackoverflow.com/questions/547719/is-there-a-way-to-make-mv-create-the-directory-to-be-moved-to-if-it-doesnt-exis
function! WriteCreatingDirs()
    execute ':silent !mkdir -p %:h'
    write
endfunction
command! W call WriteCreatingDirs()

"https://github.com/othree/javascript-libraries-syntax.vim
"let g:used_javascript_libs = 'underscore,backbone,jquery,angularjs,requirejs'
"let g:syntastic_html_checkers = []
"autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
"autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
"autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
"autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
"autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
"
"
" Autocomplpop: {{{
"" acp options
" let g:acp_enableAtStartup = 1
" " let g:acp_mappingDriven = 1
" let g:acp_completeOption = '.,w,b,u,t,i,k'
" " let g:acp_behaviorSnipmateLength = 0
"
" let g:acp_behaviorUserDefinedMeets = 'acp#meetsForKeyword'
" let g:acp_behaviorUserDefinedFunction = 'syntaxcomplete#Complete'
" }}}

"function! Empty(findstart, complWord)
"  return 0
"endfunction
"
"autocmd FileType javascript set omnifunc=Empty


" Syntastic: {{{
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_javascript_jslint_conf = "--nomen --plusplus --forin --regexp"
"let g:syntastic_coffee_coffeelint_args = "--csv -f ~/.coffeelint-config.json"
let g:syntastic_ignore_files = ['\.coffee$', '\.html$', '\.hbs$']
" }}}

nmap <F3>  :set nopaste!<CR>

map <C-h> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"let g:ycm_semantic_triggers =  {
"  \   'coffee': ['.'],
"  \ }

"http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
" let mapleader = "\<Space>"
"Type <Space>o to open a new file:
nnoremap <Leader>o :CtrlP<CR>
"Type <Space>w to save file (lot faster than :w<Enter>):
nnoremap <Leader>w :w<CR>

"Copy & paste to system clipboard with <Space>p and <Space>y:
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader><Leader> V

"III. Use region expanding
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


" map normal-mode 's' for simple search
map s <Plug>(smalls)
" if you want to use smalls in visual/operator or both mode.
omap s <Plug>(smalls)
xmap s <Plug>(smalls)

let g:EasyMotion_leader_key = ','


" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
vmap <Leader> k(EasyAlign)


"CtrlSF https://github.com/dyng/ctrlsf.vim
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

let g:jsx_ext_required = 0
let g:ackprg = 'ag --nogroup --nocolor --column'


" set theme
" Note: All options should be set before the colorscheme onedark line in your ~/.vimrc.
let g:onedark_terminal_italics = 1
colorscheme onedark
highlight Comment cterm=italic

" git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
" ctrlp: {{{
"

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_show_hidden = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules$\|\.git$\|\.meteor$\|\.svn$\|dist$\|\.hg$',
  \ 'file': '\.DS_Store$\|\.jpg$\|\.png$\|\.jpeg$\|\.gif$\|\.svg$'
  \ }
" }}}
"
let g:cssColorVimDoNotMessMyUpdatetime = 1
 " Or if you have Neovim >= 0.1.5
 if (has("termguicolors"))
   set termguicolors
 endif

 " Theme
 syntax enable
 set background=dark
 colorscheme OceanicNext
