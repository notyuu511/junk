"outside packages: pathogen vimcompletesme gutentags nerdtree
set autoindent
set wildmenu

set expandtab " Tab literal can be insterted with <C-i>
set tabstop=4

set relativenumber

syntax on

" treat .oc files like cpp files (enables cpp syntax highlighting)
au BufNewFile,BufRead *.oc set filetype=cpp
" nerdtree toggle
map <C-n> :NERDTreeToggle<CR>
" easy copypaste with system clipboard (+)
map <C-y> "+y<CR>
map <C-p> "+p<CR>

"pathogen package manager
execute pathogen#infect()
