"== NERDTree.vim
" 起動用キーバインド
nmap <silent> <C-e>      :NERDTreeToggle<CR>
vmap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
omap <silent> <C-e>      :NERDTreeToggle<CR>
imap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
cmap <silent> <C-e> <C-u>:NERDTreeToggle<CR>

let NERDTreeIgnore=['\.git$', '\.svn$', '\.log$', '\.ignore$', '\.cvs$', '\.swp$', '\.keep$'] " 無視するファイル
let NERDChristmasTree = 1                                                                     " カラー表示
let NERDTreeHighlightCursorline = 0                                                           " カーソル行を強調しない
let NERDTreeShowHidden = 1                                                                    " 隠しファイルを表示
