" neocomplcache
let g:acp_enableAtStartup = 0                           " AutoComplPopを無効化(競合するため)
let g:neocomplcache_force_overwrite_completefunc = 1    " 強制的にcompletefuncを上書きする
let g:neocomplcache_enable_at_startup = 1               " 起動時に有効化
let g:neocomplcache_enable_smart_case = 1               " 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplcache_min_syntax_length = 3               " シンタックスをキャッシュするときの最小文字長
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*' " neocomplcacheを自動的にロックするバッファ名のパターンを指定
let g:neocomplcache_enable_camel_case_completion = 1    " キャメルレースの補完を有効化
let g:neocomplcache_enable_underbar_completion = 1      " アンダースコア区切りの補完を有効化
