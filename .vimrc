
" 一旦ファイルタイプ関連を無効化する
filetype off

"============================= neobundle  =========================
" vim起動時のみruntimepathにneobundle.vimを追加
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" neobundle.vimの初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理しgit@github.com:を省略
NeoBundleFetch 'Shougo/neobundle.vim'

" 読み込むプラグインを記載
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'violetyk/neocomplete-php.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'honza/vim-snippets'
NeoBundle 'rhysd/accelerated-jk'
NeoBundle 'rhysd/clever-f.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'osyo-manga/vim-over'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'

" colorschema
" NeoBundle 'altercation/vim-colors-solarized'
" NeoBundle 'jeffreyiacono/vim-colors-wombat'
" NeoBundle 'mrkn/mrkn256.vim'
" NeoBundle 'therubymug/vim-pyte'
" NeoBundle 'vim-scripts/Zenburn'

" コメントON/OFFを手軽に実行
NeoBundle 'tomtom/tcomment_vim'

" 選択部分の整形
NeoBundle 'vim-easy-align'

" 選択文字の両端に文字追加
NeoBundle 'tpope/vim-surround'

" ログファイルを色づけしてくれる
NeoBundle 'vim-scripts/AnsiEsc.vim'

" true / falseの変更
NeoBundle 'AndrewRadev/switch.vim'

" == for ruby
" ruby補完
" NeoBundle 'vim-scripts/ruby-matchit', { "autoload" : {  "filetypes" : [ "ruby", "eruby" ] } }
" NeoBundleLazy 'marcus/rsense', { 'autoload': { 'filetypes': 'ruby', } , }
" NeoBundleLazy 'supermomonga/neocomplete-rsense.vim', { 'autoload' : { 'insert' : 1, 'filetypes': 'ruby', } }

" Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-endwise'

" Rails向けのコマンドを提供する
NeoBundle 'tpope/vim-rails'

" slim
NeoBundle 'slim-template/vim-slim'

call neobundle#end()

"====================================================================


""=============================== 補完機能 ===========================
" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_smart_case = 1
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h\w*'
" tabで補完候補の選択を行う
"inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>" 
"noremap <expr><S-TAB> pumvisible() ? "\<Up>" : "\<S-TAB>" 
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" ポップアップメニューで表示される候補の数
let g:neocomplete#max_list = 20

" 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#enable_smart_case = 1

highlight Pmenu ctermbg=248 guibg=#606060
highlight PmenuSel ctermbg=159 guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6

" neocomplete for php dictionary
let g:neocomplete_php_locale = 'ja'

" 補完機能 : ruby 
let g:rsenseUseOmniFunc = 1
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

""====================================================================





"============================ 基本設定 ==============================
" 読み込んだプラグインを含め、ファイルタイプの検出
" ファイルタイプ別プラグイン/インデントを有効化する
filetype plugin indent on


" 挿入モードでbackspaceで行末の改行やタブを削除できるようにする
set backspace=start,eol,indent

" backspace,space,各矢印キー,チルダキーを使用できるようにする
set whichwrap=b,s,[,],<,>,~

" マウスとの連動機能のOFF
set mouse=

" シンタックスハイライトをON
syntax on

" 行数表示
set number

" コマンドラインモードでのDirectoryの表示形式
set wildmenu wildmode=list:full

" swapを作らない
set noswapfile

" 折り返し設定
"set wrap
set nowrap

" タブをスペース2個に置換
set expandtab
set ts=2

" 自動インデント インデント時に挿入されるspaceの数
set autoindent
set shiftwidth=2

" 括弧入力時に対応する括弧を表示
set showmatch

" 対応する括弧の表示時間を2にする
set matchtime=2

" 全角スペース表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

" 背景色が黒の時の端末共通の色設定
highlight CursorLine ctermfg=none       ctermbg=darkgray cterm=none
highlight MatchParen ctermfg=none       ctermbg=darkgray 
highlight Comment    ctermfg=DarkGreen  ctermbg=NONE 
highlight Directory  ctermfg=DarkGreen  ctermbg=NONE 

" default colorschemaの設定
colorscheme default

" 内部標準の文字コードの設定
set encoding=utf-8

" ファイルの文字コードの自動識別
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp

" helpのキーバインド
nnoremap <C-h>       :<C-u>help<Space>
nnoremap <C-h><C-h>  :<C-u>help<Space><C-r><C-w><Enter>

" vimrcの編集・読み込み キーバインド
nnorema <Space>. :<C-u>edit $MYVIMRC<Enter>
nnorema <Space>s. :<C-u>source $MYVIMRC<Enter>
"====================================================================





"============================= 検索機能 =============================
" 検索時のハイライト
"set nohlsearch
set hlsearch

" 最後まで検索したら先頭に戻る
set wrapscan

" 検索時の文字入力途中でも検索させる
set incsearch

" 検索時の大文字・小文字区別しない
set ignorecase

" クエリに大文字が含まれている場合は区別して検索
set smartcase

" 検索履歴を残す数
set history=100
"====================================================================



"========================== ctags ===================================
nnoremap <C-@> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
"nnoremap <C-@> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
"====================================================================



"========================== unite.vim ===============================
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>
"====================================================================



"============================= 構文チェック =========================
let g:syntastic_check_on_open=0   "ファイルを開いたときはチェックしない
let g:syntastic_check_on_save=1   "保存時にはチェック
let g:syntastic_auto_loc_list=0   "エラーがあったら自動でロケーションリストを開かない
let g:syntastic_loc_list_height=2 "エラー表示ウィンドウの高さ
set statusline+=%#warningmsg#     "エラーメッセージの書式
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"エラー表示マークを変更
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='x'
let g:syntastic_warning_symbol='?'
"====================================================================



"============================ ステータスライン ======================
" ステータスラインを表示
set laststatus=2
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=<%l行/%L行(%p%%),%v列>
highlight StatusLine term=NONE cterm=NONE ctermfg=black ctermbg=white


" 挿入モード時、ステータスラインの色を変更
" https://sites.google.com/site/fudist/Home/vim-nihongo-ban/-vimrc-sample
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction
"====================================================================



"========================== キー割り当て ============================
" キー割り当て: ESCをCtrl+j
imap <silent> <C-j> <ESC>

" キー割り当て: ノーマル,ヴィジュアルモードのタブキー
nmap <silent> <Tab> 15<Right>
vmap <silent> <Tab> 15<Right>

" キー割り当て: buffer間移動
nmap <silent> <C-n>      :update<CR>:bn<CR>
imap <silent> <C-n> <ESC>:update<CR>:bn<CR>
vmap <silent> <C-n> <ESC>:update<CR>:bn<CR>
cmap <silent> <C-n> <ESC>:update<CR>:bn<CR>

" キー割り当て: 文字コード変換
"nmap ,U :set encoding=utf-8<CR>
"nmap ,E :set encoding=euc-jp<CR>
"nmap ,S :set encoding=cp932<CR>

" F6に日付挿入を割り当て
nmap <F6> <ESC>i<C-R>=strftime("%Y/%m/%d (%a) %H:%M")<CR><CR>

" キー割り当て: ファイルタイプからスクリプトをRで実行
if has("autocmd")
  command! CommandRun call s:CommandRun()
  map R :CommandRun<CR>
  function! s:CommandRun()
    :w
    if &filetype == "php"
      :!php %
    elseif &filetype == "perl"
      :!perl %
    elseif &filetype == "ruby"
      :!ruby %
    elseif &filetype == "python"
      :!python %
    endif
  endfunction
endif
"=====================================================================




"==========================  スニペット =============================
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" tabで候補を選択し、C-kで展開。タブで中の移動
imap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

let g:neosnippet#enable_snipmate_compatibility = 1
" 辞書を指定
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
"====================================================================




"========================  高速でjkを使う ===========================
let g:accelerated_jk_acceleration_table = [10,5,3]
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
"====================================================================





"================================ 賢いf ==============================
" 大文字入力時のみ大文字を区別
let g:clever_f_smart_case=1

" 行を跨いだ検索を禁止
let g:clever_f_across_no_line=1

" 記号全般をf;でマッチさせる
let g:clever_f_chars_match_any_signs = ';'
"=====================================================================




"================== 階層色付け(vim-indent-guides) ====================
let g:indent_guides_enable_on_vim_startup = 1

" 自動カラー無効
let g:indent_guides_auto_colors = 0

" 奇数列は意図的に背景色と同じにする
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=green

let g:indent_guides_start_level = 1

let g:indent_guides_guide_size = 1
"=====================================================================


"=============== 検索・置換の文字ハイライト(over.vim) ================
let mapleader=" "
nnoremap <Leader>o :OverCommandLine<CR>
nnoremap sub :OverCommandLine<CR>%s/<C-r><C-w>//g<Left><Left>
nnoremap subp y:OverCommandLine<CR>%s!<C-r>=substitute(@0, '!', '\\!', 'g')<CR>!!gI<Left><Left><Left>
"=====================================================================



"=============== NERDTree.vim  =======================================
" 起動用キーバインド
nmap <silent> <C-e>      :NERDTreeToggle<CR>
vmap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
omap <silent> <C-e>      :NERDTreeToggle<CR>
imap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
cmap <silent> <C-e> <C-u>:NERDTreeToggle<CR>

" 無視するファイル
let NERDTreeIgnore=['\.git', '\.svn', '\.log', '\.ignore', '\.cvs', '\.swp']

" カラー表示
let NERDChristmasTree = 1

" カーソル行を強調しない
let NERDTreeHighlightCursorline = 0

" 隠しファイルを表示
let NERDTreeShowHidden = 1
"=====================================================================


"====================== 選択部分の整形 ============================
" vip -> Enter -> 対象文字
vmap <Enter> <Plug>(EasyAlign)
" gaip -> 対象文字
nmap ga <Plug>(EasyAlign)
"=====================================================================


"====================== true / false 変更 ============================
nmap + :Switch<CR>
nmap - :Switch<CR>
"=====================================================================


"====================== vimの戦闘力を計測 ============================
function! Scouter(file, ...)
  let pat = '^\s*$\|^\s*"'
  let lines = readfile(a:file)
  if !a:0 || !a:1
    let lines = split(substitute(join(lines, "\n"), '\n\s*\\', '', 'g'), "\n")
  endif
  return len(filter(lines,'v:val !~ pat'))
endfunction
command! -bar -bang -nargs=? -complete=file Scouter
  \        echo Scouter(empty(<q-args>) ? $MYVIMRC : expand(<q-args>), <bang>0)
"=====================================================================
