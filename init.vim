set number
:set relativenumber
:set autoindent
:set tabstop=8 shiftwidth=8
:set smartindent
:set cindent
:syntax enable
:set mouse=a

call plug#begin('~/.config/nvim/plugged')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'dense-analysis/ale' " ALE for linter

set encoding=UTF-8

call plug#end()

" Shortcuts
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <C-s> :w<CR>
nnoremap <ESC> :wq<CR>

nnoremap <C-q> :q!<CR>

nnoremap <C-v> :TerminalSplit bash<CR>
nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = '#'
let g:airline_left_alt_sep = '='
let g:airline_right_sep = '*'
let g:airline_right_alt_sep = '~'
let g:airline_symbols.branch = '!'
let g:airline_symbols.readonly = '"'
let g:airline_symbols.linenr = '_'

let g:python3_host_prog = '/usr/local/bin/python'
" Enable coc.nvim
let g:coc_global_extensions = ['coc-python']

" Set Python executable (adjust the path if necessary)
let g:coc_python_pythonExecutable = '/usr/local/bin/python'
" Specify that Neovim should use Python 3
let g:python3_host_prog = '/usr/bin/python3'  " Use the correct path to your Python 3 executable

" Enable coc.nvim
let g:coc_global_extensions = ['coc-clangd']

" Configure coc-clangd for C programming
let g:coc_clangd_cmd = 'ccls'

" Enable ALE
let g:ale_enabled = 1

" Enable linting on file open
let g:ale_lint_on_enter = 1

" Enable linting as you type
let g:ale_lint_on_text_changed = 'always'

let g:ale_c_betty_executable = '/usr/local/bin/betty'
" Specify the linters for C
let g:ale_linters = {
   \ 'c': ['betty'],
   \ }

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

