" outside software: 
" package mananger: pathogen 
" packages : vimcompletesme gutentags nerdtree

" wildmenu for previews
set autoindent
set wildmenu

" Make tab key insert 4 spaces
" (Tab literal can be insterted with <C-i> for Makefiles,config files like fstab, etc)
set expandtab 
set tabstop=4

set relativenumber

syntax on

" treat .oc files like cpp files (enables cpp syntax highlighting)
au BufNewFile,BufRead *.oc set filetype=cpp
" nerdtree toggle
map <C-n> :NERDTreeToggle<CR>
" easy copypaste with system clipboard (+)
map <S-y> "+y <CR>
map <S-p> "+p <CR>

" pathogen package manager
execute pathogen#infect()
