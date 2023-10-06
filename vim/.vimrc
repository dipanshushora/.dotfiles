                                                    " vim editor settings

set nocompatible
set showcmd
set t_Co=256
syntax enable
filetype plugin on

                                                    " vim editor set [options] 

set number
set relativenumber
set nohlsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set incsearch
set hidden
set updatetime=100
set tw=0

                                                    " vim swap file backup and undodir
                                                    
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

                                                    " set gui options
                                                    
set scrolloff=8
set colorcolumn=100
"highlight ColorColumn ctermbg=0 guibg=#fe8019
set signcolumn=yes
set termguicolors
"set showtabline=2
"set cmdheight=2
set background=light

                                                    " vim folding

"create folding view when buffer leave window 
"autocmd BufWinLeave *.* mkview

""open folding when buffer window open
"autocmd BufWinEnter *.* silent loadview

                                                    " remapping

let mapleader = " "
nnoremap confe :e $MYVIMRC<CR>
nnoremap confr :source $MYVIMRC<CR>
nnoremap <C-n> :badd<space>

                                                    " terminal configuration for vim

" nnoremap <leader>t :let $VIM_DIR=expand('%:p:h')<CR>:bot term ++rows=15<CR>cd $VIM_DIR<CR>
nnoremap <leader>t :bot term ++rows=15<CR>

                                                    " setting up remap for vertical resize

let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 27
"nnoremap <leader>pv :wincmd v<bar> :Ex <bar> : vertical resize 30 <cr> 
" nnoremap <leader>ps :Rg<space>
nnoremap <silent> <leader>> :vertical resize +5<cr>
nnoremap <silent> <leader>< :vertical resize -5<cr>
nnoremap <leader>+ :resize +5<cr>
nnoremap <leader>- :resize -5<cr>
nnoremap <leader>= :wincmd =<cr>
nnoremap <leader>_ :wincmd _<cr>

                                                    " remapping keys for moving through window

nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>

                                                    " switch buffer window

nnoremap <C-j> :bp<cr>
nnoremap <C-k> :bn<cr>

                                                    " bracey.vim configuration
                                                    
" " starting server in browser
" nnoremap <leader>o :Bracey<cr>
" "  " stop server
" nnoremap <leader>s :BraceyStop<cr>
" " " reload server
" nnoremap <leader>r :BraceyReload<cr>

                                                    " vim deferred value changes

"Adjust delays in milliseconds for deferred highlighting:
let g:matchup_matchparen_deferred_show_delay = 50
let g:matchup_matchparen_deferred_hide_delay = 700

                                                    " vim-plug and plugins

call plug#begin('~/.vim/plugged')
Plug 'sainnhe/gruvbox-material'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'andymass/vim-matchup'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-commentary'
call plug#end()

                                                    " setting up plugins customization

" if executable('rg')
"     let g:rg_dervice_root='true'
" endif

" let g:ctrlp_use_caching=0

                                                    " enable delete surroundings

"let g:matchup_surround_enabled = 1
let g:matchup_matchparen_deferred = 1
" displaying popup style matchups
let g:matchup_matchparen_offscreen = {'method': 'popup'}

                                                    " Adjust timeouts in milliseconds for matchparen highlighting:

let g:matchup_matchparen_timeout = 200
let g:matchup_matchparen_insert_timeout = 100

                                                    " customizing the hightlight colors

augroup matchup_matchparen_highlight
  autocmd!
  autocmd ColorScheme * hi MatchParen guifg=#d26939 cterm=underline gui=underline
augroup END

augroup matchup_matchword_highlight
  autocmd!
  autocmd ColorSCheme * hi MatchWord guifg=#98d1ce cterm=underline gui=underline
augroup END


                                                    " gruvbox theme

let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_ui_contrast = 'high'
colorscheme gruvbox-material
let g:gruvbox_material_better_performance = 1
highlight ColorColumn ctermbg=0 guibg=#fe8019

" vim transparent background
"hi! Normal guibg=NONE ctermbg=NONE

                                                    " remap for undotree toggle and creating directory for undo if not exist

nnoremap <F5> : UndotreeToggle<CR>

"if has("persistent_undo")
"   let target_path = expand('~/.vim/undodir')
"
"    " create the directory and any parent directories
"    " if the location does not exist.
"    if !isdirectory(target_path)
"        call mkdir(target_path, "p", 0700)
"    endif
"
"    let &undodir=target_path
"    set undofile
"endif

" undotree window layout
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 2
endif

                                                    " vim devicons 

" settings up icons
let g:webdevicons_enable = 1
" setting up nerd tree with icons
let g:webdevicons_enable_nerdtree = 1
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" nerdtree git fonts
let g:NERDTreeGitStatusUseNerdFonts = 1
" nertree show ignored status
let g:NERDTreeGitStatusShowIgnored = 1

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

                                                    " nerd tree keymaps and shortcuts

nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree % | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" if argc() == 0 && !exists("s:std_in")
"     autocmd VimEnter * NERDTree | wincmd p
" else
"     autocmd VimEnter * NERDTree % | wincmd p
" endif


" Start NERDTree when Vim starts with a directory argument.
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif


" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

                                                    " coc configuration 

" install coc extensions 
let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-tsserver', 'coc-json', 'coc-yaml', 'coc-prettier', 'coc-clangd', 'coc-pairs']

" using tab trigger for coc for autocompletion

function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction

  " Insert <tab> when previous text is space, refresh completion if not.

  inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1):
	\ CheckBackspace() ? "\<Tab>" :
	\ coc#refresh()
  inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Highlight the symbol and its references when holding the cursor. to use install [coc-highlight] package
"autocmd CursorHold * silent call CocActionAsync('highlight')

" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Symbol renaming.
nmap <F2> <Plug>(coc-rename)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

                                                    " coc prettier commands

"command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <leader>f :CocCommand prettier.formatFile<CR>

                                                    " change default emmet key

" let g:user_emmet_expandabbr_key='<Tab>'

                                                    "emmet  settings
" let g:user_emmet_settings = {
" \  'javascript' : {
" \      'extends' : 'jsx',
" \  },
" \}

                                                    " setting airline themes

let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox_material'
"let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
"let g:airline_section_z = airline#section#create('%3p%% %#__accent_bold#%4l%#__restore__#%#__accent_bold#/%L%#__restore__# %3v')
let g:airline_section_z = airline#section#create(['windowswap', 'obsession', '%p%%', 'colnr', 'linenr', 'maxlinenr'])

                                                    " smarter tab line

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#show_tab_nr = 1


                                                    " bracey setting and keymaps

" let g:bracey_auto_start_browser = 0
" let g:bracey_server_allow_remote_connections = 0
" let g:bracey_refresh_on_save = 1
" let g:bracey_eval_on_save = 1
" let g:bracey_server_port=19834
" let g:bracey_server_path = 'http://localhost'
