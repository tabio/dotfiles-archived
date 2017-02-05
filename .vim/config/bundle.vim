filetype off

set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

" Buffer {{{
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'fholgado/minibufexpl.vim' " タグエディタ風にバッファ管理ウィンドウを表示
" }}}

" Completion {{{
  NeoBundle 'Shougo/neocomplcache'
  NeoBundle 'Shougo/neosnippet.vim'
  NeoBundle 'Shougo/neosnippet-snippets'
  NeoBundle 'honza/vim-snippets'
" }}}

" ColorSchema{{{{
  NeoBundle 'altercation/vim-colors-solarized'
  NeoBundle 'croaker/mustang-vim'
  NeoBundle 'jeffreyiacono/vim-colors-wombat'
  NeoBundle 'nanotech/jellybeans.vim'
  NeoBundle 'vim-scripts/Lucius'
  NeoBundle 'vim-scripts/Zenburn'
  NeoBundle 'jpo/vim-railscasts-theme'
  NeoBundle 'therubymug/vim-pyte'
  NeoBundle 'brafales/vim-desert256'
  NeoBundle 'mrkn/mrkn256.vim'
  NeoBundle 'tomasr/molokai'
" }}}

" Edit {{{
  NeoBundle 'nathanaelkane/vim-indent-guides' " インデントの可視化
  NeoBundle 'tpope/vim-surround'              " 選択文字の両端に文字追加
  NeoBundle 'vim-easy-align'                  " 選択部分を整列
  NeoBundle 'tomtom/tcomment_vim'             " コメントON/OFFを手軽に実行
" }}}

" Encording {{{
  NeoBundle 'banyan/recognize_charcode.vim'
" }}}

" Programming {{{
  NeoBundle 'vim-ruby/vim-ruby'
  NeoBundle 'tpope/vim-rails'   " Rails向けのコマンドを提供する
  NeoBundle 'tpope/vim-endwise' " Ruby向けにendを自動挿入してくれる
" }}}

" Searching/Moving{{{
  NeoBundle 'yuroyoro/smooth_scroll.vim' " スクロールを賢く
  NeoBundle 'rhysd/clever-f.vim'         " fを賢く
  NeoBundle 'rhysd/accelerated-jk'       " jk移動をスムーズに
  NeoBundle 'tyru/open-browser.vim'      " urlを開く
" }}}

" Syntax {{{
  NeoBundle 'haml.zip'                            " haml
  NeoBundle 'slim-template/vim-slim'              " slim
  NeoBundle 'pangloss/vim-javascript'             " js
  NeoBundle 'jQuery'                              " jquery
  NeoBundle 'nginx.vim'                           " nginx
  NeoBundle 'kchmck/vim-coffee-script'            " coffee
  NeoBundle 'tpope/vim-markdown'                  " MarkDown
  NeoBundle 'joker1007/vim-markdown-quote-syntax' " MarkDown内のコードをハイライト
  NeoBundle 'scrooloose/syntastic'                " syntax check
" }}}

" Unite {{{
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/neoyank.vim'
  NeoBundle 'ujihisa/unite-colorscheme'
" }}}

" Utility {{{
  NeoBundle 'tpope/vim-fugitive'             " vimでgitコマンド
  NeoBundle 'kannokanno/previm'              " markdownをブラウザで閲覧
  NeoBundle 'itchyny/lightline.vim'          " ステータスライン
  NeoBundle 'AndrewRadev/switch.vim'         " true / falseの変更
  NeoBundle 'vim-scripts/AnsiEsc.vim'        " ログ色付け
  NeoBundle 'gorodinskiy/vim-coloresque.git' " カラーコードを色付け
" }}}

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
