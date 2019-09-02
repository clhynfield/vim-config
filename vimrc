" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin('~/.vim/plugged')

"
" Colorschemes
"
Plug 'tpope/vim-vividchalk'
" Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'edkolev/tmuxline.vim'

"
" General Editing
"
" Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'kana/vim-textobj-user'
" Plug 'Julian/vim-textobj-variable-segment'
" Plug 'kana/vim-textobj-line'
" Plug 'thinca/vim-textobj-between'
Plug 'tpope/vim-unimpaired'
" Plug 'sjl/gundo.vim'
" Plug 'godlygeek/tabular'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
" Plug 'nertzy/j-split'
" Plug 'matt-royal/diffthese'
"Plug 'camelcasemotion'
" Plug 'nertzy/edit-plus'
" Plug 'brysgo/quickfixfix'
" Plug 'Lokaltog/vim-easymotion'
" Plug 'regreplop.vim'
" Plug 'Peeja/insert_mode_background_color'
" Plug 'vim-scripts/L9'
" Plug 'Peeja/vim-cdo'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Plug 'honza/vim-snippets'
" Plug 'YankRing.vim'
" Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
" Plug 'tpope/vim-projectionist'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-sensible'
Plug 'guns/vim-sexp'
Plug 'junegunn/vim-easy-align'

"
" Window Management
"
" Plug 'ZoomWin'

"
" Searching
"
" Plug 'mileszs/ack.vim'
Plug 'epmatsw/ag.vim'
" Plug 'tpope/vim-abolish'
" Plug 'henrik/vim-qargs'
Plug 'ctrlpvim/ctrlp.vim'

"
" Navigation
"

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'majutsushi/tagbar'
Plug 'tpope/vim-vinegar'

"
" Languages
"

Plug 'dense-analysis/ale'
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc

Plug 'fatih/vim-go'

Plug 'tpope/vim-endwise'

Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-pencil'

Plug 'aliou/bats.vim'

"
" Development Tool Integration
"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Plug 'pivotal/tmux-config'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-dispatch'
" Plug 'carlobaldassi/ConqueTerm'
" Plug 'sjl/vitality.vim'
" Plug 'brysgo/test_server'
" Plug 'mdelillo/vim-simple-bdd'
Plug 'janko-m/vim-test'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Initialize plugin system
call plug#end()

filetype plugin indent on

syntax on

runtime! init/**.vim

colorscheme Tomorrow-Night

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

