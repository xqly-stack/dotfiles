" --- Basic Setup ---
set nocompatible
syntax enable
filetype plugin on

" --- Finding Files ---
set path+=**
set wildmenu

" --- Tag Jumping ---
command! MakeTags !ctags -R .

packadd netrw
" --- File Browsing (netrw) ---
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" --- Snippets ---
" Reads your skeleton file and moves the cursor to the title tag
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

" --- Build Integration ---
" Configure :make to run RSpec with the Quickfix formatter
set makeprg=bundle\ exec\ rspec\ -f\ QuickfixFormatter
