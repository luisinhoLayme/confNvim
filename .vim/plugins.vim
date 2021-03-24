call plug#begin('~/.vim/plugged')

"syntax
Plug 'jelera/vim-javascript-syntax'
Plug 'kabbamine/vcoolor.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'digitaltoad/vim-pug'
Plug 'dNitro/vim-pug-complete', { 'for': ['jade', 'pug']  }
Plug 'scrooloose/syntastic'

"IDE
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'luochen1990/rainbow'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Plug 'easymotion/vim-easymotion'
Plug 'ap/vim-css-color'
Plug 'jbgutierrez/vim-better-comments'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}


"typing
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator' "tmux
Plug 'elzr/vim-json'
"los giguientes funcionan los dos para lso snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'



"git ks
if has('nvim') || has('patch-8.0.902')
    Plug 'mhinz/vim-signify'
else
    Plug 'mhinz/vim-signify', { 'branch': 'legacy'  }
endif
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'



" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Temas para airline

" Temas
" Plug 'dikiaap/minimalist'
Plug 'joshdick/onedark.vim'
" Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'
Plug 'morhetz/gruvbox'
" Plug 'rafalbromirski/vim-aurora'
" Plug 'NLKNguyen/papercolor-theme'
Plug 'franbach/miramare'
Plug 'glepnir/oceanic-material'


call plug#end()
