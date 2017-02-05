" == 階層色付け(vim-indent-guides)
let g:indent_guides_enable_on_vim_startup = 1 " 起動時に有効化
let g:indent_guides_start_level = 1           " ガイドを開始するレベル(ネストの深さ)
let g:indent_guides_auto_colors = 0           " 自動カラー無効
let g:indent_guides_guide_size = 1            " ガイドの幅

" 奇数列は意図的に背景色と同じにする
" hi IndentGuidesOdd  ctermbg=black
" hi IndentGuidesEven ctermbg=green
hi IndentGuidesOdd  ctermbg=darkgray
hi IndentGuidesEven ctermbg=darkgray

let g:indent_guides_color_change_percent = 30     " ガイドの色の変化の割合
