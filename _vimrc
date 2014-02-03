syntax on
cd $HOME
colo darkblue
"set nocp

"filetype plugin on
map <C-up> <C-w><Up>
map <C-Down> <C-w><Down>
map <C-Right> <C-w><Right>
map <C-Left> <C-w><Left>
" Switch to alternate file
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" configure tags - add additional tags here or comment out not-used ones
set tags+=$HOME/vimfiles/tags/cpp
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

"vundle
set nocompatible              " be iMproved
set backspace=2
filetype off                  " required!

set rtp+=$HOME/vimfiles/bundle/vundle/
call vundle#rc('$HOME/vimfiles/bundle/')


" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/syntastic'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'OmniCppComplete'
Bundle 'ctags.vim'
Bundle 'ctags.exe'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "scrooloose/nerdtree"
Bundle "vim-scripts/taglist.vim"
" non-GitHub repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
