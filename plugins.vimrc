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

Plug 'deoplete-plugins/deoplete-jedi'

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

