"outside packages: pathogen vimcompletesme
set autoindent
set wildmenu
set expandtab
set relativenumber
"treat .oc files like cpp files (enables cpp syntax highlighting)
au BufNewFile,BufRead *.oc set filetype=cpp
syntax on
"enable tabs for makefiles
autocmd FileType make setlocal noexpandtab

" nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

"pathogen path manager
execute pathogen#infect()
