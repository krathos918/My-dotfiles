" ██      ██ ██ ████     ████
"░██     ░██░██░██░██   ██░██
"░██     ░██░██░██░░██ ██ ░██
"░░██    ██ ░██░██ ░░███  ░██
" ░░██  ██  ░██░██  ░░█   ░██
"  ░░████   ░██░██   ░    ░██
"   ░░██    ░██░██        ░██
"    ░░     ░░ ░░         ░░
"
" File type detection
filetype on
filetype plugin on
" compatibilty
set nocompatible

" file type for plugins
filetype indent on

" Syntax highlighting
syntax on

" Line numbers
set number

" Status bar
set laststatus=2

" cursor line
set cursorline

"mouse
set mouse=a

"Guicolors
set termguicolors

" Mappatura per debug
"map <F6> :!octave --debug %<CR>


" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Easier tab navigation
nnoremap <C-l> :tabnext<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-t> :tabnew<CR>

" Close current tab
nnoremap <C-x> :tabclose<CR>

" Move current tab to different positions
nnoremap <C-Left> :tabmove -1<CR>
nnoremap <C-Right> :tabmove +1<CR>

" Configurazione vim-floaterm con spazio+t
let g:floaterm_keymap_toggle = '<space>t'
let g:floaterm_keymap_kill = '<Esc>'
" Configura dimensione e posizione
let g:floaterm_width = 0.8
let g:floaterm_height = 0.6
let g:floaterm_position = 'center'
" Configurazione aggiuntiva per gestire ESC nel modo terminale
tnoremap <Esc> <C-\><C-n>



"Goyo macro
nnoremap <leader>g :Goyo<CR>

"vimplug
call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
"Goyo
Plug 'junegunn/goyo.vim'

"Catpuccin mocha
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
"vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'https://github.com/gnu-octave/vim-octave.git', {'for': 'octave'}
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'voldikss/vim-floaterm'
Plug 'tribela/vim-transparent'
Plug 'girishji/vimcomplete'
call plug#end()

"vimwiki
let g:vimwiki_list = [{'syntax': 'markdown', 
			\'ext':'md'}]

" transparet background
let g:transparent_groups = ['Normal', 'Comment', 'Constant', 'Special', 'Identifier',
                            \ 'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String',
                            \ 'Function', 'Conditional', 'Repeat', 'Operator', 'Structure',
                            \ 'LineNr', 'NonText', 'SignColumn', 'CursorLineNr', 'EndOfBuffer']

"LSP and autocomplete
let g:vimcomplete_tab_enable = 1
packadd lsp

"airline theme
let g:airline_theme= 'catppuccin_mocha' 
let g:airline_powerline_fonts=1

" Colorscheme
colorscheme catppuccin_mocha
