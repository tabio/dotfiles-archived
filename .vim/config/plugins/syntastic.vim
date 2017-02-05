"== 構文チェック(syntastic_check_on_open)
let g:syntastic_check_on_open=0   "ファイルを開いたときはチェックしない
let g:syntastic_check_on_save=1   "保存時にはチェック
let g:syntastic_auto_loc_list=0   "エラーがあったら自動でロケーションリストを開かない
let g:syntastic_loc_list_height=2 "エラー表示ウィンドウの高さ
set statusline+=%#warningmsg#     "エラーメッセージの書式
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" エラー表示マークを変更
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='x'
let g:syntastic_warning_symbol='?'
