set clipboard=unnamedplus
set autoindent
set relativenumber
" treat .oc files (cmps104a) like C++ files (enables C++-syntax highlighting) 
au BufNewFile,BufRead *.oc set filetype=cpp
" treat .build files like py files (meson)
au BufNewFile,BufRead *.build set filetype=python

" pathogen stuff
execute pathogen#infect()
