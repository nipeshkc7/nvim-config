set runtimepath+=~/.config/nvim/.vim_runtime
set updatetime=1000

set relativenumber
set number
set nuw=6

au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

source ~/.config/nvim/.vim_runtime/vimrcs/basic.vim
source ~/.config/nvim/.vim_runtime/vimrcs/plugins_config.vim
source ~/.config/nvim/.vim_runtime/vimrcs/extended.vim 

colorscheme gruvbox

let vim_markdown_folding_disabled = 1

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()
