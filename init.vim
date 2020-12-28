" folder plugins

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-surround' " Description

Plug 'scrooloose/nerdtree' " Files explorer

Plug 'joshdick/onedark.vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes' " Themes

Plug 'Yggdroot/indentLine'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'Shougo/neco-syntax'  " Fuen

"Plug 'deoplete-plugins/deoplete-jedi'

Plug 'jiangmiao/auto-pairs'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'wokalski/autocomplete-flow'
  " For func argument completion
Plug 'Shougo/neosnippet'

Plug 'Shougo/neosnippet-snippets'

Plug 'neovim/node-host' , {'do':'npm install -g neovim'}

"Plug 'ternjs/tern_for_vim',{'do':'npm install && npm install -g tern'}

"Plug 'carlitux/deoplete-ternjs'

Plug 'vimlab/split-term.vim'

Plug 'mg979/vim-visual-multi', {'branch':'master'}
"git
Plug 'tpope/vim-fugitive'

Plug 'ervandew/supertab'

Plug 'xuyuanp/nerdtree-git-plugin'

Plug 'haya14busa/incsearch.vim'
"Javascript Plugins
"Plug 'w0rp/ale'

Plug 'ryanoasis/vim-devicons'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'leafgarland/typescript-vim'

Plug 'peitalin/vim-jsx-typescript'

Plug 'mxw/vim-jsx'

Plug 'pangloss/vim-javascript'
"Plug 'leafoftree/vim-vue-plugin'
"
Plug 'preservim/nerdcommenter'




Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()


"dark theme

"conf
" theme configuration
if (has("termguicolors"))
	set termguicolors
endif
set title "show name file in terminal
set number
set mouse=a

set cursorline
set colorcolumn=120

"identar
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set noshowmode
set conceallevel=0
"terminal conf
set splitbelow
set splitright
set clipboard=unnamedplus
 " trigger `autoread` when files changes on disk
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" notification after file change
autocmd FileChangedShellPost *
			\ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

filetype plugin on

let g:NERDTreeChdirMode = 1
let g:NERDTreeShowHidden = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:indentLine_fileTypeExclude  = ['text', 'sh','help','terminal']
let g:indentLine_bufNameExclude = ['NERD_tree','term:.*']
let g:python_host_prog = '/home/edilson/anaconda3/bin/python3.8'
let g:node_host_prog = '/usr/local/bin/node'
"let g:deoplete#enable_at_startup = 1
let g:split_terminal_default_shell = "zsh"
"vue
let g:coc_node_path = '/usr/local/bin/node'
"multi cursors
let g:multi_cursor_use_default_mapping=0
" neoclide
let g:ale_linters = {
	\ 'javascript': ['standard']
	\}
let g:ale_fixers = { 'javascript': ['standard']}

"let g:ale_sign_error = '❌'
"let g:ale_sign_warning = '⚠️'
"let g:ale_fix_on_save = 1
let g:coc_global_extensions = [ 'coc-tsserver','coc-emmet','coc-css','coc-html','coc-json','coc-prettier','coc-python', 'coc-vetur', 'coc-git' ]
let g:vim_json_syntax_conceal = 0
let g:indentLine_setConceal = 0

" markdown


"" Default mapping
"let g:multi_cursor_start_word_key      = '<C-n>'
"let g:multi_cursor_select_all_word_key = '<A-n>'
"let g:multi_cursor_start_key           = 'g<C-n>'
"let g:multi_cursor_select_all_key      = 'g<A-n>'
"let g:multi_cursor_next_key            = '<C-n>'
"let g:multi_cursor_prev_key            = '<C-p>'
"let g:multi_cursor_skip_key            = '<C-x>'
"let g:multi_cursor_quit_key            = '<Esc>'
"
"Supertab
let g:SuperTabDefaultCompletionType = '<C-n>'

"search
let g:incsearch#auto_nohlsearch = 1
" comments
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1



"markdown
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']
"
"
"
""
"
"augroup deopleteCompleteDoneAu
"	autocmd!
"	autocmd CompleteDone * silent! pclose!
"augroup END
"
"
"
"themes

map <f2> :NERDTreeToggle<CR>
map <C-l> :tabn <CR>
map <A-e> :q <CR>
map <A-s> :w <CR>
map <A-f> :ALEFix <CR>
map <A-t> :Term <CR>
map <A-l> <C-w><Right>
map <A-h> <C-w><Left>
map <A-k> <C-w><Up>
map <A-j> <C-w><Down>
map <A-u> <Esc>
map <A-r> :NERDTreeRefreshRoot <CR>
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map! <A-CR> <Right>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug> (coc-implementation)
nmap <silent> gr <Plug> (coc-references)
map  <A-c> 1<leader>c<space>
map <A-;> :vertical resize +10<CR>
map <A-/> :vertical resize -10<CR>
syntax enable
colorscheme onedark "active theme
