set path+=** 
set spell
set nocompatible
set title
set nowrap
set listchars=tab:>\ ,trail:- 
set scrolloff=8
set sidescrolloff=8
set splitright
set modelines=0
set autoread
set hidden
au FocusGained,BufEnter * :silent! !
set guifont=fira-code
set encoding=utf-8
set visualbell
set backspace=indent,eol,start
set nobackup
set noswapfile
set relativenumber 
set number 
set expandtab tabstop=2 shiftwidth=2 softtabstop=2 
set autoindent
set showmode showcmd
set ttyfast lazyredraw
set showmatch
set hlsearch incsearch ignorecase smartcase
set autochdir
set wildmenu 
set laststatus=2 statusline=%F
set clipboard=unnamed
set termguicolors
syntax enable
filetype plugin on

"------------------------------------------------------------------------------
" Keymaps
"------------------------------------------------------------------------------

let mapleader = "\<space>"
let g:python3_host_prog = "/usr/bin/python3"
let g:netrw_browse_split = 3
let g:netrw_banner = 0
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:airline_theme='deus'
let g:deoplete#enable_at_startup = 1

" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

call plug#begin('~/.local/share/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-orgmode/orgmode'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline-themes'
Plug 'zchee/deoplete-jedi'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'psf/black', { 'tag': '*' }
Plug 'romgrk/barbar.nvim'
Plug 'jupyter-vim/jupyter-vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'yuttie/comfortable-motion.vim'
Plug 'voldikss/vim-floaterm'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'danilamihailov/beacon.nvim'
Plug 'preservim/nerdtree'                             " file tree
Plug 'scrooloose/syntastic'                           " cool comments
Plug 'tpope/vim-commentary'                           " comment entire line
Plug 'Raimondi/delimitMate'                           " auto-close brackets
Plug 'tpope/vim-vinegar'                              " use - to open file-browser
Plug 'APZelos/blamer.nvim'                            " shows git name changes
Plug 'numkil/ag.nvim'                                 " silver searcher
Plug 'davidhalter/jedi-vim'                           " python autocomplet
Plug 'ncm2/ncm2'                                      " autocomplete
Plug 'ncm2/ncm2-jedi'                                 " autoocomplete for py
Plug 'ncm2/ncm2-bufword'                              " completion from current buffers
Plug 'ncm2/ncm2-path'                                 " path completion
Plug 'dracula/vim',{ 'name': 'dracula' }              " best theme ever
Plug 'airblade/vim-gitgutter'                         " shows git changes
Plug 'davidhalter/jedi-vim'                           " autocompletion
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rakr/vim-one'
Plug 'unblevable/quick-scope' 
Plug 'preservim/tagbar'
" Initialize plugin system
call plug#end()
syntax enable

set background=dark
colorscheme palenight

" Show character column
set colorcolumn=80

let g:tagbar_ctags_bin = '/usr/local/bin/ctags'

noremap <C-n> :NERDTreeToggle<CR>
nnoremap <Leader>b :ls<CR>:b<Space>
noremap <C-h> :History<CR>
noremap <Leader>p :Files<CR>

map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

nnoremap <C-p> :<C-u>FZF<CR>

nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>

nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :vertical resize -3<CR>
noremap <silent> <C-Down> :vertical resize +3<CR>
nnoremap <C-e> :set nomore <Bar> :ls <Bar> :set more <CR>:b<Space>
noremap <silent> <Leader>t :FloatermToggle <CR>

nmap <F8> :TagbarToggle<CR>
"
" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" airline
let g:airline#extensions#tabline#enabled = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntastic
highlight SyntasticErrorSign guifg=white guibg=red
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_check_on_wq = 0
let g:beacon_size = 40
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
let g:blamer_enabled = 1

" fzf 
let g:fzf_action = {
\ 'ctrl-t': 'tab split',
\ 'ctrl-x': 'split',
\ 'ctrl-v': 'vsplit' }

" %a is the day of week, in case it's needed
let g:blamer_date_format = '%a %e %b %Y'
highlight Blamer guifg=darkorange
highlight Beacon guibg=white ctermbg=15
let g:syntastic_python_checker_args = '--ignore=E225'
highlight SyntasticError guibg=#2f0000

lua << EOF

-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Treesitter configuration
require('nvim-treesitter.configs').setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop,
  -- highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    -- Required for spellcheck, some LaTex highlights and
    -- code block highlights that do not have ts grammar
    additional_vim_regex_highlighting = {'org'},
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}

require('orgmode').setup({
  org_agenda_files = {'~/Dropbox/org/*', '~/my-orgs/**/*'},
  org_default_notes_file = '~/Dropbox/org/refile.org',
})
EOF

autocmd BufWritePost *.py execute ':Black'
